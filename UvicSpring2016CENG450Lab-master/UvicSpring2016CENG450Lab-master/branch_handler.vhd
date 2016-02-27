----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:32 02/23/2016 
-- Design Name: 
-- Module Name:    branch_handler - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


-- Branch Handler is based on the assumption that Test is the previously executed instruction
-- The results of the TEST will be held in the ID_EX register 
-- This means a branch statement needs to be able to read from the IR

-- The branch ALU is specific to performing the TEST and doing the math for branch instruction calculation


entity branch_handler is
	Port(
			--Inputs
			CLK : in std_logic;
			INSTR : in std_logic_vector( 15 downto 0);
			
			current_pc : in  std_logic_vector(6 downto 0);
			addr_in : in  std_logic_vector(15 downto 0);
			r7_in  : in  std_logic_vector(15 downto 0);
			
			BranchTaken : out  std_logic;
			next_pc	: out  std_logic_vector(15 downto 0);
			r7_out  : out  std_logic_vector(15 downto 0));
			
end branch_handler;

architecture Behavioral of branch_handler is

	--Format-B fields -- Since branches are handled in the decode stage these fields are not passed on 
	signal disp1 :  STD_LOGIC_VECTOR (8 downto 0);
	signal disps :  STD_LOGIC_VECTOR (5 downto 0);

	signal z_flag : std_logic;	
	signal n_flag : std_logic;
	
	signal Opcode : std_logic_vector( 6 downto 0);

	  
begin
--	zero_detector : BRANCH_ALU port map (alu_in1, alu_in2, alu_mode , clk , rst, alu_result,prev_instr_z_flag_result,prev_instr_n_flag_result);
	
	Opcode <= INSTR(15 downto 9);
	
		--Format B Fields
	disp1 <= INSTR(8 downto 0);
	disps <= INSTR(5 downto 0);   

	
--	test_conditionals: process(Opcode)
--	begin 
--	 if(rising_edge(clk))
--	end process;
	
		--Generate z_flag
	generate_zflags:process(clk)
	begin
		if(clk = '1' and clk'event) then
			case calc_result (15 downto 0) is
				when X"0000" => z_flag <= '1';
				when others => z_flag <= '0';
			end case;
		end if;
	end process;
	
	--Generate n_flag
	generate_nflags:process(clk)
	begin
		if(clk = '1' and clk'event) then
			case calc_result (15 downto 15) is
				when "1" => n_flag <= '1';
				when others => n_flag <= '0';
			end case;
		end if;
	end process;
	

	branch_relative:process( clk, Opcode, disp1, current_pc )
	begin
		case Opcode is 
			--BRR 
			when "1000000" => 
					next_pc <= std_logic_vector( signed(current_pc) +  resize(signed(disp1), current_pc'length )) ;
					BranchTaken <= '1';
			--BRR.N
			when "1000010" =>
				if(n_flag = '1') then
					BranchTaken <= '1'; 
					next_pc <= std_logic_vector( signed(current_pc) +  resize(signed(disp1), current_pc'length )) ;
				else
					BranchTaken <= '0';
				end if;
			--BRR.Z
			when "1000011" =>
				if(z_flag = '1') then
					BranchTaken <= '1';
					next_pc <= std_logic_vector( signed(current_pc) +  resize(signed(disp1), current_pc'length )) ;
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
