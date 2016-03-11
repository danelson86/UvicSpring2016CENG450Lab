library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.MicroprocessorMisc.ALL;

entity BusyStatusRegister is
	Port(
			rst : in std_logic := '0';
			clk : in std_logic  := '0';
			--read signals
			rd_index1: in std_logic_vector(3 downto 0):= "0000";
			rd_data1: out std_logic  := '0';
			rd_index2: in std_logic_vector(3 downto 0):= "0000";
			rd_data2: out std_logic  := '0';
			--write signals
			wb_rqst_addr: in std_logic_vector(3 downto 0):= "0000";
			wb_addr: in std_logic_vector(3 downto 0):= "0000");
end BusyStatusRegister;

architecture Behavioral of BusyStatusRegister is
	
	type busyStatusRegister is array (0 to 7) of std_logic;

	signal busyReg : busyStatusRegister := (others => '0');


begin	
				 
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1000" and wb_addr="1000" )  then
				busyReg(0) <= '0';
			elsif( wb_addr="1000" ) then
				busyReg(0) <= '0'; 
			elsif ( wb_rqst_addr="1000" ) then
				busyReg(0) <= '1';
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			
			if( wb_addr="1001" ) then
				busyReg(1) <= '0'; 
			elsif ( wb_rqst_addr="1001" ) then
				busyReg(1) <= '1';
--			elsif( wb_rqst_addr="1001" and wb_addr="1001" )  then
--				busyReg(1) <= '0';
			end if;
		end if;
	end process;

	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1010" and wb_addr="1010" )  then
				busyReg(2) <= '0';
			elsif ( wb_addr="1010" )then
				busyReg(2) <= '0'; 
			elsif ( wb_rqst_addr="1010" ) then
				busyReg(2) <= '1';
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1011" and wb_addr="1011" )  then
				busyReg(3) <= '0';
			elsif ( wb_addr="1011" )then
				busyReg(3) <= '0'; 
			elsif ( wb_rqst_addr="1011" ) then
				busyReg(3) <= '1';
			end if;
		end if;
	end process;

	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1100" and wb_addr="1100" )  then
				busyReg(4) <= '0';
			elsif  ( wb_addr="1100" )then
				busyReg(4) <= '0'; 
			elsif ( wb_rqst_addr="1100" ) then
				busyReg(4) <= '1';
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1101" and wb_addr="1101" )  then
				busyReg(5) <= '0';
			elsif( wb_addr="1101" ) then
				busyReg(5) <= '0'; 
			elsif  ( wb_rqst_addr="1101" )then
				busyReg(5) <= '1';
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1110" and wb_addr="1110" )  then
				busyReg(6) <= '0';
			elsif  ( wb_addr="1110" ) then
				busyReg(6) <= '0'; 
			elsif ( wb_rqst_addr="1110" )then
				busyReg(6) <= '1';
			end if;
		end if;
	end process;
	
	process(clk,wb_rqst_addr,wb_addr)
	begin
		if falling_edge(clk) then
			if( wb_rqst_addr="1111" and wb_addr="1111" )  then
				busyReg(7) <= '0';
			elsif( wb_addr="1111" ) then
				busyReg(7) <= '0'; 
			elsif  ( wb_rqst_addr="1111" )then
				busyReg(7) <= '1';
			end if;
		end if;
	end process;
	
--	busyReg(0) <= '0' when (wb_rqst_addr="1000" and wb_addr="1000" ) else
--					  '0' when (wb_addr="1000") else
--					  '1' when  (wb_rqst_addr="1000");
--	busyReg(1) <= '0' when (wb_rqst_addr="1001" and wb_addr="1001" ) else
--					  '0' when (wb_addr="1001") else
--					  '1' when  (wb_rqst_addr="1001");
--					  
--	busyReg(2) <= '0' when (wb_rqst_addr="1010" and wb_addr="1010" ) else
--					  '0' when (wb_addr="1010") else
--					  '1' when  (wb_rqst_addr="1010");
--					  
--  busyReg(3) <= '0' when (wb_rqst_addr="1011" and wb_addr="1011" ) else
--					  '0' when (wb_addr="1011") else
--					  '1' when  (wb_rqst_addr="1011");
--						
--	
----		--read 1
--	process(clk,rd_index1,busyReg)
--	begin
--		if(clk='0' and clk'event) then
--			case rd_index1(3 downto 0) is
--				when "1000" => rd_data1 <=  busyReg(0);
--				when "1001" => rd_data1 <=  busyReg(1); 
--				when "1010" => rd_data1 <=  busyReg(2); 
--				when "1011" => rd_data1 <=  busyReg(3);
--				when "1100" => rd_data1 <=  busyReg(4); 
--				when "1101" => rd_data1 <=  busyReg(5); 
--				when "1110" => rd_data1 <=  busyReg(6);
--				when "1111" => rd_data1 <=  busyReg(7); 
--				when others => NULL;
--			end case;	
--		end if;
--	end process;
--	
--	--read 1
--	process(clk,rd_index2,busyReg)
--	begin
--		if(clk='0' and clk'event) then
--			case rd_index2(3 downto 0) is
--				when "1000" => rd_data2 <=  busyReg(0);
--				when "1001" => rd_data2 <=  busyReg(1); 
--				when "1010" => rd_data2 <=  busyReg(2); 
--				when "1011" => rd_data2 <=  busyReg(3);
--				when "1100" => rd_data2 <=  busyReg(4); 
--				when "1101" => rd_data2 <=  busyReg(5); 
--				when "1110" => rd_data2 <=  busyReg(6);
--				when "1111" => rd_data2 <=  busyReg(7); 
--				when others => NULL;
--			end case;	
--		end if;
--	end process;
--
--	--read operation
----	rd_data1 <= busyReg(0) when(rd_index1="1000") else
----					busyReg(1) when(rd_index1="1001") else
----					busyReg(2) when(rd_index1="1010") else
----					busyReg(3) when(rd_index1="1011") else
----					busyReg(4) when(rd_index1="1100") else
----					busyReg(5) when(rd_index1="1101") else
----					busyReg(6) when(rd_index1="1110") else
----					busyReg(7) when(rd_index1="1111") else '0';
----					
----
----	rd_data2 <= busyReg(0) when(rd_index2="1000") else
----					busyReg(1) when(rd_index2="1001") else
----					busyReg(2) when(rd_index2="1010") else
----					busyReg(3) when(rd_index2="1011") else
----					busyReg(4) when(rd_index2="1100") else
----					busyReg(5) when(rd_index2="1101") else
----					busyReg(6) when(rd_index2="1110") else 		
----					busyReg(7) when(rd_index2="1111") else '0';		
					
end Behavioral;

