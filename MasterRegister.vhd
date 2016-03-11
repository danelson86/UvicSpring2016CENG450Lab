library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use work.MicroprocessorMisc.ALL;

entity MasterRegister is
	port(	rst : in std_logic;
			clk : in std_logic;
			--read signals
			rd_index1: in std_logic_vector(2 downto 0);
			rd_data1: out std_logic_vector(15 downto 0);
			rd_en1: in std_logic;
			rd_index2: in std_logic_vector(2 downto 0);
			rd_data2: out std_logic_vector(15 downto 0);
			rd_en2: in std_logic;
			--write signals
			wb_rqst_addr : in std_logic_vector(4 downto 0);
			wb_addr: in std_logic_vector(4 downto 0);
			wr_data: in std_logic_vector(15 downto 0);
			dataHazard : out std_logic := '0');
		 
end MasterRegister; 

architecture behavioural of MasterRegister is
	

 signal dataHazardLocal : std_logic;
 
 type Busy_array is array (0 to 7) of unsigned(1 downto 0);
 type Register_array is array (0 to 7) of std_logic_vector(15 downto 0);

 signal reg_file : Register_array := (X"0001", X"0002", X"0003", X"0004", X"0005", X"0006", X"0007", X"0008");

 signal busy_file : Busy_array :=  (others =>(others => '0'));
 
 
 signal busy1 : unsigned(1 downto 0) := (others => '0');
 signal busy2 : unsigned(1 downto 0) := (others => '0');
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
				case wb_addr(3 downto 0) is
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
					
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if(wb_rqst_addr="1000" ) then
				busy_file(0) <= to_unsigned(3,2);
			else
			 if (busy_file(0) /= 0) then
				busy_file(0) <= busy_file(0) - to_unsigned(1,2);
			 end if;
			end if;
		end if;
	end process; 
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if ( wb_rqst_addr="1001" ) then
				busy_file(1) <= to_unsigned(3,2);
			else
				 if (busy_file(1) > 0) then
					busy_file(1) <= busy_file(1) - to_unsigned(1,2);
				 end if;
			end if;
		end if;
	end process;

	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if ( wb_rqst_addr="1010" ) then
				busy_file(2) <= to_unsigned(3,2);
			else
			 if (busy_file(2) /= 0) then
				busy_file(2) <= busy_file(2) - to_unsigned(1,2);
			 end if;
			end if;
		end if;
	end process;

	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if ( wb_rqst_addr="1011" ) then
				busy_file(3) <=to_unsigned(3,2);
				else
				 if (busy_file(3) /= 0) then
					busy_file(3) <= busy_file(3) - to_unsigned(1,2);
				 end if;
			end if;
		end if;
	end process;

	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if ( wb_rqst_addr="1100" ) then
				busy_file(4) <= to_unsigned(3,2);
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if  ( wb_rqst_addr="1101" )then
				busy_file(5) <= to_unsigned(3,2);
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if ( wb_rqst_addr="1110" )then
				busy_file(6) <=to_unsigned(3,2);
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if  ( wb_rqst_addr="1111" )then
				busy_file(7) <= to_unsigned(3,2);
			end if;
		end if;
	end process;
	
	
--	---read 1
	process(clk,rd_index1,busy_file,rd_en1)
	begin
--	if rising_edge(clk) then
		if(rd_en1 = '1') then
			case rd_index1(2 downto 0) is
				when "000" => busy1 <=  busy_file(0);
				when "001" => busy1 <=  busy_file(1); 
				when "010" => busy1 <=  busy_file(2); 
				when "011" => busy1 <=  busy_file(3);
				when "100" => busy1 <=  busy_file(4); 
				when "101" => busy1 <=  busy_file(5); 
				when "110" => busy1 <=  busy_file(6);
				when "111" => busy1 <=  busy_file(7); 
				when others => NULL;
			end case;	
		end if;
--	end if;
	end process;
	
--	busy1 <=    busy_file(0) when(rd_index1="000" ) else
--							busy_file(1) when(rd_index1="001") else
--							busy_file(2) when(rd_index1="010") else
--							busy_file(3) when(rd_index1="011") else
--							busy_file(4) when(rd_index1="100") else
--							busy_file(5) when(rd_index1="101") else
--							busy_file(6) when(rd_index1="110") else
--							busy_file(7) when(rd_index1="111") else '0';
--
--	busy2    <= busy_file(0) when(rd_index2="000") else
--							busy_file(1) when(rd_index2="001") else
--							busy_file(2) when(rd_index2="010") else
--							busy_file(3) when(rd_index2="011") else
--							busy_file(4) when(rd_index2="100") else
--							busy_file(5) when(rd_index2="101") else
--							busy_file(6) when(rd_index2="110") else 
--							busy_file(7) when(rd_index2="111") else '0';
	
	process(clk,rd_index2,busy_file,rd_en2)
	begin
--	if rising_edge(clk) then
		if(  rd_en2 = '1') then
			case rd_index2(2 downto 0) is 
				when "000" => busy2 <=  busy_file(0);
				when "001" => busy2 <=  busy_file(1); 
				when "010" => busy2 <=  busy_file(2); 
				when "011" => busy2 <=  busy_file(3);
				when "100" => busy2 <=  busy_file(4); 
				when "101" => busy2 <=  busy_file(5); 
				when "110" => busy2 <=  busy_file(6);
				when "111" => busy2 <=  busy_file(7); 
				when others => NULL;
			end case;	
		end if;
--	end if;
	end process;
	
--	dataHazard <= '1' when(busy1 /= 0) else
--					  '1' when(busy2  0) else '0';
					  

					  
					  
--	process(clk,busy1,busy2)
--	begin 
----	if falling_edge(clk) then 
--		dataHazard <= (busy1 or busy2);
----	end if;
--	end process;


end behavioural; 
