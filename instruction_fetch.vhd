library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MicroprocessorMisc.ALL;

entity instruction_fetch is
    Port ( CLK : in  STD_LOGIC:= '0';
			  RST : in  STD_LOGIC := '0';
			  BranchEvent : in BranchData:= (detect => '0', PC => X"0000"); 
			  dataHazard  : in STD_LOGIC:= '0';
           FetchDataOut :out FetchData:=FETCH_NOP);
end instruction_fetch;
	
architecture Behavioral of instruction_fetch is
	 
	component ROM_VHDL is 
	    port(
				clk	: in std_logic:= '0';
				addr  : in  std_logic_vector (15 downto 0):= X"0000";
				instr : out std_logic_vector (15 downto 0):= X"0000");
	end component; 
	
	signal CLKt :  STD_LOGIC:= '0';
	signal PC: STD_LOGIC_VECTOR (15 downto 0) :=  X"0000";
	signal instr :  std_logic_vector (15 downto 0):= X"0000";
	signal FetchDataTemp:  FetchData;

begin 
 
	IR : ROM_VHDL port map (clkt, PC,Instr);
	
	CLKt <= CLK when ( dataHazard = '0') else '0';
	
	determine_next_pc : process( CLKt )
	begin
		if rising_edge(CLKt)  then
			if RST = '1' then
				PC <= X"0000"; 
			elsif (BranchEvent.detect = '0') then
					PC <=  std_logic_vector( unsigned(PC) + 1 );					
			elsif BranchEvent.detect = '1' then
				 PC <= BranchEvent.PC; 
			end if; 
		end if;
	end process; 
	
	process( CLKt)
	begin
		if rising_edge(CLKt)  then
				FetchDataOut <= FetchDataTemp; 
		end if;
	end process;
	
	FetchDataTemp.Instr <= Instr when(BranchEvent.detect = '0') else X"0000";
	FetchDataTemp.PC <= PC when (BranchEvent.detect = '0') else X"0000";
	
end Behavioral;
 
