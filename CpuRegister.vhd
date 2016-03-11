library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.MicroprocessorMisc.ALL;

entity CpuRegister is
	port(	rst : in std_logic;
			clk : in std_logic;
			--read signals
			rd_index1: in std_logic_vector(3 downto 0);
			rd_index2: in std_logic_vector(3 downto 0);
			rd_index1: in std_logic_vector(3 downto 0);
			rd_data1: out std_logic_vector(15 downto 0);
			rd_index2: in std_logic_vector(3 downto 0);
			rd_data2: out std_logic_vector(15 downto 0);
			
	
			
			--write signals
			wb_rqst_addr : in std_logic_vector(3 downto 0);
			wb_addr: in std_logic_vector(3 downto 0);
			wr_data: in std_logic_vector(15 downto 0);
			dataHazard : out std_logic := '0'
			
			);
		 
end CpuRegister; 

architecture behavioural of CpuRegister is
	

 signal dataHazardLocal : std_logic;
 
 type tag_array is array (0 to 7) of std_logic_vector(3downto 0);
 type Register_array is array (0 to 7) of std_logic_vector(15 downto 0);
 type Busy_array is array (0 to 7) of std_logic;
 
 signal DataBusTemp : DataBus;


 signal reg_file : Register_array := (others => '0');

 signal tag_file : tag_array := (others => '0');
 
 signal busy_file : Busy_array := (others => '0');

 signal tag : std_logic_vector(3 downto 0):= "0001";
 

 
 signal wb_tag : std_logic_vector(2 downto 0);

begin
	

	--------------------------------------Begin Data Register ---------------------------------------
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
	DataBusTemp.data1 <= reg_file(0) when(rd_index1="1000") else
					reg_file(1) when(rd_index1="1001") else
					reg_file(2) when(rd_index1="1010") else
					reg_file(3) when(rd_index1="1011") else
					reg_file(4) when(rd_index1="1100") else
					reg_file(5) when(rd_index1="1101") else
					reg_file(6) when(rd_index1="1110") else
					reg_file(7) when(rd_index1="1111") else X"0000";

	DataBusTemp.data2 <= reg_file(0) when(rd_index2="1000") else
					reg_file(1) when(rd_index2="1001") else
					reg_file(2) when(rd_index2="1010") else
					reg_file(3) when(rd_index2="1011") else
					reg_file(4) when(rd_index2="1100") else
					reg_file(5) when(rd_index2="1101") else
					reg_file(6) when(rd_index2="1110") else 
					reg_file(7) when(rd_index2="1111") else X"0000";
					
					
		-------------------------------------End Regular Register --------------------------
--	std_logic_vector( unsigned(PC) + 1 );					

--matches (i) <= not (a(i) xor b(i));

	--read tag file base on index

	process(clk,rd_index1, rd_en1)
		begin
			if( rd_en1  = '1' ) then
					waitingTag1 <= tag_file(to_integer(unsigned(rd_index1)));
			end if;
	end process;

	process(clk,rd_index2, rd_en2)
			begin
				if( rd_en2 = '1') then
						waitingTag1 <= tag_file(to_integer(unsigned(rd_index2)));
				end if;
		end process;

dataHazard <= '1' when (waitingTag1 /= "0000") else
				  '1' when (waitingTag2 /= "0000") else '0';
		
	
--	waitingTag1 <=    tag_file(0) when(rd_index1="1000") else
--							tag_file(1) when(rd_index1="1001") else
--							tag_file(2) when(rd_index1="1010") else
--							tag_file(3) when(rd_index1="1011") else
--							tag_file(4) when(rd_index1="1100") else
--							tag_file(5) when(rd_index1="1101") else
--							tag_file(6) when(rd_index1="1110") else
--							tag_file(7) when(rd_index1="1111") else '0';
--
--	waitingTag1    <= tag_file(0) when(rd_index2="1000") else
--							tag_file(1) when(rd_index2="1001") else
--							tag_file(2) when(rd_index2="1010") else
--							tag_file(3) when(rd_index2="1011") else
--							tag_file(4) when(rd_index2="1100") else
--							tag_file(5) when(rd_index2="1101") else
--							tag_file(6) when(rd_index2="1110") else 
--							tag_file(7) when(rd_index2="1111") else '0';
	process(clk)
	begin
		if(rising_edge(clk)) then 
			tag <= std_logic_vector( unsigned(tag) + 2 );					
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_addr="1000" ) then
				tag_file(0) <= "0000"; 
			elsif ( wb_rqst_addr="1000" ) then
				tag_file(0) <= tag;
			end if;
		end if;
	end process;
							
							
	process(clk)
	begin
		if(clk='0' and clk'event) then
			if(rst='1') then
				for i in 0 to 7 loop
					tag_file(i)<= (others => '0');
				end loop;
			else
				case wb_rqst_addr(3 downto 0) is
					when "1000" => tag_file(0) <= wr_data;
					when "1001" => tag_file(1) <= wr_data;
					when "1010" => tag_file(2) <= wr_data;
					when "1011" => tag_file(3) <= wr_data;
					when "1100" => tag_file(4) <= wr_data;
					when "1101" => tag_file(5) <= wr_data;
					when "1110" => tag_file(6) <= wr_data;
					when "1111" => tag_file(7) <= wr_data;
					when others => NULL;
				end case;
			end if;
		end if;
	end process;

-----------------------------------------------





end behavioural; 
