----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:26 02/23/2016 
-- Design Name: 
-- Module Name:    instruction_register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_register is
    Port ( CLK : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
			  Pc_In : in  STD_LOGIC_VECTOR (15 downto 0);
--			  Opcode_Out : out STD_LOGIC_VECTOR (7 downto 0);
           Instr_Out : out  STD_LOGIC_VECTOR (15 downto 0)
			 );
end instruction_register;

architecture Behavioral of instruction_register is

	type rom_typ is array(0 to 15) of STD_LOGIC_VECTOR(15 downto 0);
	signal IrAddr :  STD_LOGIC_VECTOR (3 downto 0);

	--TODO create instructions to test
	signal ir_file : rom_typ := (X"0000", -- Nop
										  "0100001000000000", --IN R0
										  "0100001001000000", --IN R1
										  "0100001010000000", --IN R2
										  "0000111000000000", --TEST R0
										  "0000111001000000", --TEST R1
										  "0000111010000000", --TEST R2
										  "0000001000001010", --ADD R0 R1 R2
										  "0000010000000111", --SUB R0 R0 R7
										  "0000011111101011", --MUL R7 R5 R6
										  "0000101000000101", --SHL R0 5
										  "0000110000000111", --SHR R0 7
										  X"0000", -- Nop
										  X"0000", -- Nop
										  X"0000", -- Nop
										  X"0000" -- Nop
										  );
	
begin
	IrAddr <= Pc_In (3 downto 0); 
	
	next_instruction:process(Pc_In,RST)
	begin
		if RST = '1' then 
			Instr_Out <= "ZZZZZZZZZZZZZZZZ";
		else
			Instr_Out <= ir_file(to_integer(unsigned(IrAddr)));
		end if;
	end process;

end Behavioral;

