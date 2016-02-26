library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity control is
    Port ( 
			  --Control Unit Inputs
			  INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  
			  --Register Writeback data
			  RegWriteData : in STD_LOGIC_VECTOR (15 downto 0);
			  RegReadData1 : out STD_LOGIC_VECTOR (15 downto 0);
			  RegReadData2 : out STD_LOGIC_VECTOR (15 downto 0);
           ALUMode : out  STD_LOGIC_VECTOR (2 downto 0);
			  ImmData : out  STD_LOGIC_VECTOR (15 downto 0);
			  ALUIN2Src : out  STD_LOGIC_VECTOR (1 downto 0);
			  ALU_Dest : out STD_LOGIC_VECTOR (1 downto 0)
			  
			  );
end control;

architecture Behavioral of control is


	component register_file is
		port(	rst : in std_logic;
			clk : in std_logic;
			--read signals
			rd_index1: in std_logic_vector(2 downto 0);
			rd_data1: out std_logic_vector(15 downto 0);
			rd_index2: in std_logic_vector(2 downto 0);
			rd_data2: out std_logic_vector(15 downto 0);
			--write signals
			wr_index: in std_logic_vector(2 downto 0);
			wr_data: in std_logic_vector(15 downto 0);
			wr_enable: in std_logic);
	end component;
	
	-- Signals for Register File
	signal rd_index1 : std_logic_vector(2 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_index2 : std_logic_vector(2 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_index : std_logic_vector(2 downto 0);
	signal wr_data : std_logic_vector(15 downto 0);
	signal wr_enable : std_logic;
	
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

	wr_data <= RegWriteData;
	RegReadData1 <= rd_data1;
	RegReadData2 <= rd_data2;

	MAIN_REGS : register_file port map (clk, rst, rd_index1, rd_data1 , rd_index2 , rd_data2 , wr_index , wr_data , wr_enable);
	--Wire Register into control unit


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
	

			
	--Sets the RegRead1 control signal
	process(INSTR, OPCODE, RA, RB)
	begin
		case OPCODE is
			when "0000001" | "0000010" | "0000011" | "0000100" => rd_index1 <= rb;
			when "0000101" | "0000110" | "0000111" | "0100000" => rd_index1 <= ra;
			when others => rd_index1 <= "000";
		end case; 
	end process;


	--Sets the RegRead2 control signal
	process(INSTR, OPCODE, RC)
	begin
		case OPCODE is
			--Opcodes 1,2,3,4 (format As)
			when "0000001" | "0000010" | "0000011" | "0000100" => rd_index2 <= rc;
			when others => rd_index2 <= "000";
		end case;
	end process;
		
		--Sets the RegWrite control signals
	process(INSTR, OPCODE, RA)
	begin
		case OPCODE is
			--Opcodes 1,2,3,4,5,6,33 (format As)
			when  "0000001" | "0000010" | "0000011" | "0000100" | "0000101" | "0000110" | "0100001" => wr_index <= ra;
			when others => wr_index <= "000";
		end case;
	end process;

	
	--Sets the RegWriteEn control signals
	process(INSTR, OPCODE)
	begin
		--Opcodes 1,2,3,4,5,6,33 (format As)
		case OPCODE is
			when "0000001" | "0000010" | "0000011" | "0000100" | "0000101" | "0000110" | "0100001" => wr_enable <= '1';
			when others => wr_enable <= '0';
		end case;
	end process;
		
	--Outputs Immediate Data
	process(INSTR, OPCODE, C1)
	begin 
		case OPCODE is
			--Opcodes 5,6 (format As) Zero extend c1 to 16 bits
			when "0000101" | "0000110" => ImmData <= std_logic_vector(resize(unsigned(c1), 16));
			when others => ImmData <= X"0000";
		end case;
	end process;
	
	--Sets Reg2Src when immediate or external data is used
	process(INSTR, OPCODE)
	begin
		case OPCODE is 
			--Use immediate data for Opcodes 5,6 (format As)
			when "0000101" | "0000110" => ALUIN2Src <= "01";
			--Use external data for Opcodes 33 (format As)
			when "0100001" => ALUIN2Src <= "10";
			when others => ALUIN2Src <= "00";
		end case;
	end process;
	

--	--Handle L-Format Instructions
--	process(INSTR, OPCODE)
--	begin 
--
--		case opcode is
--			--Load
--			when "0010000"
--			--Store
--			when "0010001"
--			-- LOADIMM
--			when "0010010"
--			--MOV
--			when "0010011"
--		when others 
--	
--	end process;
	
	--Sets ALU OPCODE
	ALU_MODE_SEL:process(INSTR, OPCODE)
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
	
	-- TODO complete all instructions 
	ALU_DEST_CTRL:process(INSTR, OPCODE)
	begin
		case OPCODE is
			when  "0100000"  =>  ALU_DEST <= "10";
			when  "0010001"  =>  ALU_DEST <= "01";	 
			when others => ALU_DEST <= "00";
		end case; 
	end process;
	

	
end Behavioral;

