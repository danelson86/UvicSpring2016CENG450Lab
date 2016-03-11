LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.MicroprocessorMisc.ALL;

 
ENTITY control_tb IS
END control_tb;
 
ARCHITECTURE behavior OF control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
  COMPONENT Control is
	Port(		CLK : in std_logic:= '0';
				RST : in std_logic:= '0';
				FetchData: in FetchData :=(Instr=>X"0000",PC=>X"FFFF");
				InPortData  : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
				DataIn : in DataBus := (Data1=>X"0000",Data2=> X"0000", Addr=>X"0",Microcode => X"0");
				DataOut : out DataBus := (Data1=>X"0000",Data2=> X"0000", Addr=>X"0",Microcode => X"0");
				dataHazard : out std_logic := '0';
				BranchEvent : out BranchData :=(detect=>'1', PC =>X"0000"));
	end COMPONENT;
    

   signal CLK :  std_logic:= '0';
	signal RST :  std_logic:= '0';
	signal FetchData:  FetchData :=(Instr=>X"0000",PC=>X"FFFF");
	signal InPortData  :   STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal DataIn :  DataBus := (Data1=>X"0000",Data2=> X"0000", Addr=>X"0",Microcode => X"0");
	signal DataOut :  DataBus := (Data1=>X"0000",Data2=> X"0000", Addr=>X"0",Microcode => X"0");
	signal dataHazard :  std_logic := '0';
	signal BranchEvent :  BranchData :=(detect=>'1', PC =>X"0000");

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
					CLK => CLK,
					RST => RST,
					FetchData => FetchData,
					Inportdata => Inportdata,
					DataIN => DataIN,
					DataOut => DataOut,
					dataHazard => dataHazard,
					BranchEvent=> BranchEvent);

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


		FetchData.INSTR <= "0000001000001011";  -- Add R0,R1,R2
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001010";  -- BRR 3
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001011";  --MUL R0,R1,R2 (Should be hazard but for now)
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001010";  -- BRR 3
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001011"; --NOP
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001010"; -- Test R0 (Should be FFFF)
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001011"; -- BBRN -4
		wait for CLK_period;	
		FetchData.INSTR <= "0000001000001010"; --NOP
		wait for CLK_period;	
		
		wait for CLK_period;	
		
		wait for CLK_period;	
		wait for CLK_period;	
		wait for CLK_period;	
		wait for CLK_period;	
		

      wait;
   end process;

END;
