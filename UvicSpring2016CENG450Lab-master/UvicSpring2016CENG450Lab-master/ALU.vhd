library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity execute_alu is
    Port ( in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           alu_mode : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (15 downto 0)
			 );
end execute_alu;

architecture Behavioral of execute_alu is
	signal calc_result :  STD_LOGIC_VECTOR (15 downto 0);
begin

	--Calculate the values defined by the alu mode
	generate_results:process(in1, in2, alu_mode)		
	begin	
		case alu_mode is
			--IN1 passthrough for TEST, OUT, etc
			when "000" => calc_result <= in1;
			--IN2 passthrough for IN, etc
			when "001" => calc_result <= in2;
			--MUL 
			when "010" => calc_result <= std_logic_vector(to_signed(to_integer(signed(in1))*to_integer(signed(in2)), 16));
			--ADD
			when "011" => calc_result <= std_logic_vector(signed(in1) + signed(in2));
			--SUB
			when "100" => calc_result <= std_logic_vector(signed(in1) - signed(in2));
			--NAND
			when "101" => calc_result <= std_logic_vector(signed(in1) nand signed(in2));
			--SHR
			when "110" => calc_result <= std_logic_vector(unsigned(in1) srl to_integer(unsigned(in2)));
			--SHL
			when "111" => calc_result <= std_logic_vector(unsigned(in1) sll to_integer(unsigned(in2)));
			when others => NULL;
		end case;
	end process;
	
	--output the result 
	result <= calc_result;
	
	
end Behavioral;

