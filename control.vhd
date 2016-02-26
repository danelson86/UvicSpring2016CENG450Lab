library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity control is
    Port ( 
			  --Control Unit Inputs
			  INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  
			  --Outputs to fegister file control signals
           RegRead1 : out  STD_LOGIC_VECTOR (2 downto 0);
           RegRead2 : out  STD_LOGIC_VECTOR (2 downto 0);
           RegWrite : out  STD_LOGIC_VECTOR (2 downto 0);
           RegWriteEn : out  STD_LOGIC;
			  
			  --Outputs to ALU control signals
           ALUMode : out  STD_LOGIC_VECTOR (2 downto 0);
			  
			  --Outputs to RegRead2 MUX
			  ImmData : out  STD_LOGIC_VECTOR (15 downto 0);
			  ALUIN2Src : out  STD_LOGIC_VECTOR (1 downto 0)
			  );
end control;

architecture Behavioral of control is
	
	--Common fields and Format-A fields
	signal opcode :  STD_LOGIC_VECTOR (6 downto 0);
	signal ra :  STD_LOGIC_VECTOR (2 downto 0);
	signal rb :  STD_LOGIC_VECTOR (2 downto 0);
	signal rc :  STD_LOGIC_VECTOR (2 downto 0);
	signal c1 :  STD_LOGIC_VECTOR (3 downto 0);
	
	--Format-B fields
	signal disp1 :  STD_LOGIC_VECTOR (8 downto 0);
	signal disps :  STD_LOGIC_VECTOR (5 downto 0);
	
	--Format-L fields
	--Note: use RA for R.DEST and RB for R.SRC
	signal m1 :  STD_LOGIC;
	signal imm :  STD_LOGIC_VECTOR (7 downto 0);
	
begin

	--Break up the entire instruction into potential fields 
	opcode <= INSTR(15 downto 9);
	ra <= INSTR(8 downto 6);
	rb <= INSTR(5 downto 3);
	rc <= INSTR(2 downto 0);
	c1 <= INSTR(3 downto 0);
	disp1 <= INSTR(8 downto 0);
	disps <= INSTR(5 downto 0); 
	imm <= INSTR(7 downto 0);
	m1 <= INSTR(8);
	
	
	--TODO: Convert these if-else statements into case statements?
	
	--Sets the RegRead1 control signal
	process(INSTR, OPCODE, RA, RB)
	begin
		--Opcodes 1,2,3,4,5,6,32 (format A1)
		if(OPCODE = "0000001" or OPCODE = "0000010" or OPCODE = "0000011" or OPCODE = "0000100") then
			RegRead1 <= rb;
		--Opcodes 5,6,7,32 (format A2 and A3)
		elsif(OPCODE = "0000101" or OPCODE = "0000110" or OPCODE = "0000111" or OPCODE = "0100000") then
			RegRead1 <= ra;
		else
			RegRead1 <= "000";
		end if;
	end process;
	
	--Sets the RegRead2 control signal
	process(INSTR, OPCODE, RC)
	begin
		--Opcodes 1,2,3,4 (format As)
		if(OPCODE = "0000001" or OPCODE = "0000010" or OPCODE = "0000011" or OPCODE = "0000100") then
			RegRead2 <= rc;
		else
			RegRead2 <= "000";
		end if;
	end process;
	
	--Sets the RegWrite control signals
	process(INSTR, OPCODE, RA)
	begin
		--Opcodes 1,2,3,4,5,6,33 (format As)
		if(OPCODE = "0000001" or OPCODE = "0000010" or OPCODE = "0000011" or OPCODE = "0000100" 
			or OPCODE = "0000101" or OPCODE = "0000110" or OPCODE = "0100001") then
			RegWrite <= ra;
		else
			RegWrite <= "000";
		end if;
	end process;
	
	--Sets the RegWriteEn control signals
	process(INSTR, OPCODE)
	begin
		--Opcodes 1,2,3,4,5,6,33 (format As)
		if(OPCODE = "0000001" or OPCODE = "0000010" or OPCODE = "0000011" or OPCODE = "0000100" 
			or OPCODE = "0000101" or OPCODE = "0000110" or OPCODE = "0100001") then
			RegWriteEn <= '1';
		else
			RegWriteEn <= '0';
		end if;
	end process;
	
	--Outputs Immediate Data
	process(INSTR, OPCODE, C1)
	begin
		--Opcodes 5,6 (format As)
		if(OPCODE = "0000101" or OPCODE = "0000110") then
			--Zero extend c1 to 16 bits
			ImmData <= std_logic_vector(resize(unsigned(c1), 16));
		else
			ImmData <= X"0000";
		end if;
	end process;
	
	--Sets Reg2Src when immediate or external data is used
	process(INSTR, OPCODE)
	begin
		--Use immediate data for Opcodes 5,6 (format As)
		if(OPCODE = "0000101" or OPCODE = "0000110") then
			ALUIN2Src <= "01";
		--Use external data for Opcodes 33 (format As)
		elsif(OPCODE = "0100001") then
			ALUIN2Src <= "10";
		--Use data from register port 2
		else
			ALUIN2Src <= "00";
		end if;
	end process;
	
	--Sets ALU OPCODE
	process(INSTR, OPCODE)
	begin
		case opcode is
			--ADD
			when "0000001" => ALUMode <= "011";
			--SUB
			when "0000010" => ALUMode <= "100";
			--MUL
			when "0000011" => ALUMode <= "010";
			--NAND
			when "0000100" => ALUMode <= "101";
			--SHL
			when "0000101" => ALUMode <= "111";
			--SHR
			when "0000110" => ALUMode <= "110";
			--IN uses IN2 Passthrough
			when "0100001" => ALUMode <= "001";
			--NOP, TEST, OUT use IN1 Passthrough
			when others  => ALUMode <= "000";
		end case;
	end process;
	

end Behavioral;

