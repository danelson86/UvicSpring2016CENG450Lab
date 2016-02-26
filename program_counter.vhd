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
    Port ( CLK : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
           IsBranchTaken : in  STD_LOGIC;
			  BranchAddr : in  STD_LOGIC_VECTOR (15 downto 0);
           PcOut : out  STD_LOGIC_VECTOR (15 downto 0));
end program_counter;

architecture Behavioral of program_counter is

signal  PcReg: STD_LOGIC_VECTOR (15 downto 0) :=  X"0000";

begin

	next_instr : process( clk, IsBranchTaken, BranchAddr )
	
	begin
		if clk'event and clk = '0' then
		
			case IsBranchTaken is 
				when '0' => PcReg <= STD_LOGIC_VECTOR(unsigned(PcReg) + 1);
				when others => PcReg <= BranchAddr;
			end case;
			
			if RST = '1' then
				PcReg := X"0000";
			end if;
			
		end if;
		PcOut <= PcReg;
	end process;

end Behavioral;

