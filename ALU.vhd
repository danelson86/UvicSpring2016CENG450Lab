library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.MicroprocessorMisc.ALL;

entity ALU is
    Port ( 			
			CLK : in STD_LOGIC := '0';
			RST : in STD_LOGIC := '0';
			DataIn : in DataBus:= NULL_DATA_BUS;
			DataOut : out DataBus:= NULL_DATA_BUS);
end ALU;

architecture Behavioral of ALU is
	
	signal DataOutTemp : DataBus := NULL_DATA_BUS;
	
begin

	DataOutTemp.Data1 <= 
	
						std_logic_vector(signed(DataIn.Data1) + signed(DataIn.Data2)) 
										when(DataIn.Microcode = mADD) else
						
					   std_logic_vector(signed(DataIn.Data1) - signed(DataIn.Data2)) 
										when(DataIn.Microcode = mSUB) else
						
					   std_logic_vector(to_signed(to_integer(signed(DataIn.Data1)) * to_integer(signed(DataIn.Data2)), 16)) 
										when(DataIn.Microcode = mMUL) else
					  
					   std_logic_vector(signed(DataIn.Data1) nand signed(DataIn.Data2)) 
										when(DataIn.Microcode = mNAND) else
					  
  					   std_logic_vector(unsigned(DataIn.Data1) sll to_integer(unsigned(DataIn.Data2))) 
										when(DataIn.Microcode = mSHL ) else
					   
						std_logic_vector(unsigned(DataIn.Data1) srl to_integer(unsigned(DataIn.Data2)))
										when(DataIn.Microcode = mSHR) else  DataIn.Data1;
	
	DataOutTemp.Data2 <= DataIn.Data2;
	DataOutTemp.addr <= DataIn.addr;
	DataOutTemp.microcode <= DataIn.microcode;

	process(clk) 
	begin
		if rising_edge(clk) then
			DataOut <= DataOutTemp;
		end if;
	end process;
	
	
end Behavioral;
