library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ALU is
    Port ( in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           alu_mode : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (15 downto 0);
           z_flag : out  STD_LOGIC;
           n_flag : out  STD_LOGIC
			 );
end ALU;

architecture Behavioral of ALU is
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
	
end Behavioral;

