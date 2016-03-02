library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ALU is
    Port ( 			
			CLK : in STD_LOGIC;
			RST : in STD_LOGIC; 
			
			in1 : in 	STD_LOGIC_VECTOR (15 downto 0);
			in2  : in 	STD_LOGIC_VECTOR (15 downto 0);

			WB_ADDR : in STD_LOGIC_VECTOR (2 downto 0);
			add_en : in std_logic;
			sub_en : in std_logic;
			mul_en : in std_logic;
			nand_en : in std_logic;
			shl_en : in std_logic;
			shr_en : in std_logic;
			load_en : in std_logic;
			loadimm_en : in std_logic;
			mov_en : in std_logic;
			in_en :  in std_logic;
			out_en : in std_logic;
			store_en :in std_logic;
			
			Data_1 : out	STD_LOGIC_VECTOR (15 downto 0);
			Data_2  : out	STD_LOGIC_VECTOR (15 downto 0);
			WB_ADDRx : out STD_LOGIC_VECTOR (2 downto 0);
			wb_enx : out std_logic;
			out_enx : out std_logic;
			store_enx :out std_logic;			
			load_enx : out std_logic);

end ALU;

architecture Behavioral of ALU is

	signal calc_result :  STD_LOGIC_VECTOR (15 downto 0);
	
begin
	Data_2 <= in2;
	WB_AddrX <= WB_ADDR;
	out_enx <= out_en;
	store_enx <= store_en;
	load_enx <= load_en; 
		

	Data_1 <= std_logic_vector(signed(in1) + signed(in2)) when(add_en = '1') else
				 std_logic_vector(signed(in1) - signed(in2)) when(sub_en = '1') else
				 std_logic_vector(to_signed(to_integer(signed(in1)) * to_integer(signed(in2)), 16)) when(mul_en = '1') else
				 std_logic_vector(signed(in1) nand signed(in2)) when(nand_en = '1') else
				 std_logic_vector(unsigned(in1) sll to_integer(unsigned(in2))) when(shl_en = '1' ) else
				 std_logic_vector(unsigned(in1) srl to_integer(unsigned(in2))) when(shr_en = '1') else  in1;
		
	-- Agglomerate all signals that require a write back into a single flag
	wb_enx <= add_en or sub_en or mul_en or nand_en or shl_en or shr_en or in_en or mov_en or load_en or loadimm_en;
	
	
end Behavioral;
