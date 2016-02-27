library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity control is
    Port ( 
			  --Control Unit Inputs
			  INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;	
			  
			  RegWriteData : in  STD_LOGIC_VECTOR (15 downto 0);
			  WriteEnableIn : in std_logic;
			  WriteIndexIn : in std_logic_vector(2 downto 0);
			  WriteIndexOut : out std_logic_vector(2 downto 0);
			  WriteEnableOut : out std_logic;
			  

				-- Branch Instruction Data in and Out
			  CurrentPC : in STD_LOGIC_VECTOR (6 downto 0);
			  BranchTaken : out std_logic;
			  BranchPC : out  STD_LOGIC_VECTOR (6 downto 0);			  
			  
			  --Outputs for ALU use
			  ALUMode : out  STD_LOGIC_VECTOR (2 downto 0);
			  ALUIN2Src : out  STD_LOGIC_VECTOR (1 downto 0);
			  ALU_Dest : out STD_LOGIC_VECTOR (1 downto 0);
			  ALU_Data_A : out  STD_LOGIC_VECTOR (15 downto 0);
			  ALU_Data_B : out  STD_LOGIC_VECTOR (15 downto 0);
			  
			  
			  ImmData : out  STD_LOGIC_VECTOR (15 downto 0);

			  --Outputs for MEM us
			  MemMode : out STD_LOGIC_VECTOR (1 downto 0);
			  MemDestAddr : out STD_LOGIC_VECTOR (2 downto 0);
			  MemSrcAddr : out STD_LOGIC_VECTOR (2 downto 0);
			  MemData : out STD_LOGIC_VECTOR(15 downto 0);
			  
			  Extern_In : in STD_LOGIC_VECTOR(15 downto 0);
			  Extern_Out : out STD_LOGIC_VECTOR(15 downto 0));
end control;

architecture Behavioral of control is
	
	
--------------------------Begin Register---------------------------------------------

	component register_file is
		port(
				rst : in std_logic;
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
	
	-------------------------------End Register --------------------------------------------------------
	

	--Common fields and Format-A fields
	signal opcode :  STD_LOGIC_VECTOR (6 downto 0);
	signal ra :  STD_LOGIC_VECTOR (2 downto 0);
	signal rb :  STD_LOGIC_VECTOR (2 downto 0);
	signal rc :  STD_LOGIC_VECTOR (2 downto 0);
	signal c1 :  STD_LOGIC_VECTOR (3 downto 0);
	
	--Format B fields
	signal disp1 :STD_LOGIC_VECTOR(8 downto 0);
	signal disps : STD_LOGIC_VECTOR(5 downto 0);  
	signal n_flag : STD_LOGIC;
	signal z_flag : STD_LOGIC;
	
	--Format-L fields
	--Note: use RA for R.DEST and RB for R.SRC
	signal imm :  STD_LOGIC_VECTOR (7 downto 0);
	signal imm_temp_data : std_logic_vector (15 downto 0);
	signal m1 : std_logic;

	
begin

	REG : register_file port map(rst, clk, rd_index1,rd_data1,rd_index2,rd_data2,wr_index,wr_data,wr_enable);
												
	--Break up the entire instruction into potential fields 
	opcode <= INSTR(15 downto 9);
	
	--Format A 	Fields 
	ra <= INSTR(8 downto 6);
	rb <= INSTR(5 downto 3);
	rc <= INSTR(2 downto 0);
	c1 <= INSTR(3 downto 0);
	
	--Format B Fields
	disp1 <= INSTR(8 downto 0);
	disps <= INSTR(5 downto 0);   
	
	--Format L Fields
	imm <= INSTR(7 downto 0);
	m1 <= (INSTR(8));
	
	--TODO Handle multiple write access
	wr_data <= RegWriteData;
	wr_enable <= WriteEnableIn;
	wr_index <= WriteIndexIn;
	
	MemDestAddr <= ra;
	MemSrcAddr <= rb;
	
	Extern_Out <= Extern_In;
	
	ALU_Data_A <= rd_data1;
	ALU_Data_B <= rd_data2;
	
	
--	route_dataRdData1 : process(INSTR, OPCODE)
--	begin
----		if rising_edge(clk) then
--			case OPCODE is
--				when "0000001" | "0000010" | "0000011" | "0000100" | "0000101" | "0000110" | "0000111" | "0100000" => ALU_Data_A <= rd_data1;
----				when "0010000" | "0010001" | "0010010"  => MemData <= rd_data1;
--				when others =>  MemData <= rd_data1;
--			end case;
----		end if;
--	end process;
--	
--	route_dataRdData2 : process(INSTR, OPCODE)
--	begin
----		if rising_edge(clk) then
--			case OPCODE is
--				when "0000001" | "0000010" | "0000011" | "0000100" => ALU_Data_B <= rd_data2;
--				when others =>
--			end case;
----		end if;
--	end process;
				
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
			when  "0000001" | "0000010" | "0000011" | "0000100" | "0000101" | "0000110" | "0100001" => WriteIndexOut <= ra;
			when others => WriteIndexOut <= "000";
		end case;
	end process;

	--Sets the RegWriteEn (write to reg after ALU) 
	process(INSTR, OPCODE)
	begin
		--Opcodes 1,2,3,4,5,6,  not 33 (format As)
		case OPCODE is
			when "0000001" | "0000010" | "0000011" | "0000100" | "0000101" | "0000110" | "0100001" => WriteEnableOut <= '1';
			when others => WriteEnableOut <= '0';
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

	--Decode L-Format Instructions 
	process(INSTR, OPCODE)
	begin 
		case opcode is
			--Load
			when "0010000" => 
				MemMode <= "00";
				rd_index1 <= ra;
			--Store
			when "0010001" =>
				MemMode <= "01";
				rd_index1 <= ra;
			-- LOADIMM
			when "0010010" =>
				MemMode <= "10";
				rd_index1<= "111";
			--Mov	
			when others => 
				MemMode <= "11";
				rd_index1 <= ra;
		
		end case;
	end process;
	
	mem_imm : process( M1, clk)
	begin 
		if falling_edge(clk) then
			case M1 is
				when '1' => imm_temp_data(15 downto 8) <= rd_data1(15 downto 8);
				when others =>  imm_temp_data(7 downto 0) <= rd_data1(7 downto 0);
			end case;		
		end if;
	end process;
	
	
	test_flags: process(Opcode)
	begin
		if falling_edge(clk) then 
		
			case rd_data1 (15 downto 15) is
				when "1" => n_flag <= '1';
				when others => n_flag <= '0';
			end case;
		
			case rd_data1 (15 downto 0) is
				when X"0000" => z_flag <= '1';
				when others => z_flag <= '0';
			end case;

		end if;
	end process;
	

	-- TODO Fix sign extension so negative branches operate correctly
	branch_relative:process( clk, Opcode, disp1, CurrentPC )
	begin
		case Opcode is 
			--BRR 
			when "1000000" => 
					BranchPC <= std_logic_vector( signed(CurrentPC) +  resize(signed(disp1), CurrentPC'length )) ;
					BranchTaken <= '1';
			--BRR.N
			when "1000010" =>
				if(n_flag = '1') then
					BranchTaken <= '1'; 
					BranchPC <= std_logic_vector( signed(CurrentPC) +  resize(signed(disp1), CurrentPC'length )) ;
				else
					BranchTaken <= '0';
				end if;
			--BRR.Z
			when "1000011" =>
				if(z_flag = '1') then
					BranchTaken <= '1';
					BranchPC <= std_logic_vector( signed(CurrentPC) +  resize(signed(disp1), CurrentPC'length )) ;
				else
					BranchTaken <= '0';
				end if;
			when others => BranchTaken <= '0';
		end case;
	end process;
--	 
--	branch_absolute: process(Opcode, current_pc, disps, ra_in ,r7_in, z_flag, n_flag)
--	begin
--		case Opcode is 
--			--BR
--			when "1000011" =>
--					next_pc_temp <=  std_logic_vector( signed(ra_in) +  ((-signed(resize(unsigned(dispS), 16 ))) + 1 ) sll 1);
--					takeBranch <= '1';
--			--BRR.N
--			when "1000100" =>
--				if(n_flag = '1') then
--					next_pc_temp <= std_logic_vector( signed(ra_in) +  ((-signed(resize(unsigned(dispS), 16 ))) + 1 ) sll 1);
--					takeBranch <= '1';
--				else
--					takeBranch <= '0';
--				end if;
--			--BRR.Z
--			when "1000101" =>
--				if(z_flag = '1') then
--					next_pc_temp <= std_logic_vector( signed(ra_in) +  ((-signed(resize(unsigned(dispS), 16 ))) + 1 ) sll 1);
--					takeBranch <= '1';
--				else
--					takeBranch <= '0';
--				end if;
--			--BRR.SUB
--			when "1000110" =>
--				r7_out <= current_pc;
--				next_pc_temp <= std_logic_vector( signed(ra_in) + signed(current_pc) + 1);
--			--RETURN
--			when "1000111" =>  
--				next_pc_temp <= r7_in;
--			when others => takeBranch <= '0';
--		end case;
--		BranchTaken <= takeBranch;
--		next_pc <= next_pc_temp;
--	end process;
	
end Behavioral;

