library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MicroprocessorMisc.ALL;

entity writeback is

		Port(
				CLK : in std_logic;
				RST : in std_logic := '0';
				DataIn : in DataBus:= NULL_DATA_BUS;
				DataOut : out DataBus:= NULL_DATA_BUS;
				OutDataX : out std_logic_vector(15 downto 0):= X"0000");
					
end writeback;
architecture Behavioral of writeback is

signal DataTemp : DataBus;
--signal tempAddr : std_logic_vector (3 downto 0 );
begin

--	tempAddr <= DataIn.Addr(3 downto 0);
	DataOut <= DataIn;										 
	OutDataX <= DataIn.Data1 when (DataIn.Microcode = mOUT) else X"0000";
	
end Behavioral;