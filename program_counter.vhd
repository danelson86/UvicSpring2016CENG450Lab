----------------------------------------------------------------------------------
-- Company: 		
-- Engineer: 		 David Nelson
-- 
-- Create Date:    19:41:06 02/23/2016 
-- Design Name:    
-- Module Name:    program_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--Program counter takes send the value of the next instruction to
--be loaded to the instruction register. This value will be the 
--current pc + 4, or the value of the instruction to load (if branch taken)
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity program_counter is
    Port ( CLK : in  STD_LOGIC := '0';
			  RST : in  STD_LOGIC := '0';
           BranchEvent : in BranchData;
           PcOut : out  STD_LOGIC_VECTOR (15 downto 0) := X"0000"
			  );
end program_counter;

architecture Behavioral of program_counter is

signal  PcReg: STD_LOGIC_VECTOR (15 downto 0) :=  X"0000";

begin
	
	determine_next_pc : process( clk )
	begin
		if falling_edge(clk)  then
			if RST = '1' then
				PcReg <= X"0000";
			elsif (BranchEvent.detect = '0') then
				PcReg <=  std_logic_vector( unsigned(PcReg) + 1 );
			elsif BranchEvent.detect = '1' then
				 PcReg <= BranchEvent.PC;
			end if; 
				
		end if;
	end process;
	
	
	Pcout <= PCReg;
	



end Behavioral;

