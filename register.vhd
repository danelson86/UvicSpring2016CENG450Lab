library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity register_file is
	port(	rst : in std_logic;
			clk : in std_logic;
			--read signals
			rd_index1: in std_logic_vector(3 downto 0);
			rd_data1: out std_logic_vector(15 downto 0);
			rd_index2: in std_logic_vector(3 downto 0);
			rd_data2: out std_logic_vector(15 downto 0);
			
			--write signals
			wr_index: in std_logic_vector(3 downto 0);
			wr_data: in std_logic_vector(15 downto 0));
		
end register_file; 

architecture behavioural of register_file is
	type reg_array is array (integer range 0 to 7) of std_logic_vector(15 downto 0);
--	signal reg_file : reg_array;
----	
	--reg_file with initial values for testing. REMOVE FROM FINAL CODE
-- signal reg_file : reg_array := (others => (others => '0'));
 signal reg_file : reg_array := (X"0000",X"0000",X"0000",X"0000",X"0000",X"0001",X"0000",X"0000");
 
begin

  
	--write operation
	process(clk)
	begin
		if(clk='0' and clk'event) then
			if(rst='1') then
				for i in 0 to 7 loop
					reg_file(i)<= (others => '0');
				end loop;
			else
				case wr_index(3 downto 0) is
					when "1000" => reg_file(0) <= wr_data;
					when "1001" => reg_file(1) <= wr_data;
					when "1010" => reg_file(2) <= wr_data;
					when "1011" => reg_file(3) <= wr_data;
					when "1100" => reg_file(4) <= wr_data;
					when "1101" => reg_file(5) <= wr_data;
					when "1110" => reg_file(6) <= wr_data;
					when "1111" => reg_file(7) <= wr_data;
					when others => NULL;
				end case;
			end if;
		end if;
	end process;
	

	--read operation
	rd_data1 <= reg_file(0) when(rd_index1="1000") else
					reg_file(1) when(rd_index1="1001") else
					reg_file(2) when(rd_index1="1010") else
					reg_file(3) when(rd_index1="1011") else
					reg_file(4) when(rd_index1="1100") else
					reg_file(5) when(rd_index1="1101") else
					reg_file(6) when(rd_index1="1110") else
					reg_file(7) when(rd_index1="1111") else X"0000";

	rd_data2 <= reg_file(0) when(rd_index2="1000") else
					reg_file(1) when(rd_index2="1001") else
					reg_file(2) when(rd_index2="1010") else
					reg_file(3) when(rd_index2="1011") else
					reg_file(4) when(rd_index2="1100") else
					reg_file(5) when(rd_index2="1101") else
					reg_file(6) when(rd_index2="1110") else
					reg_file(7) when(rd_index2="1111") else X"0000";
					

end behavioural; 
