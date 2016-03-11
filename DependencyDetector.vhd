library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DependencyDetector is
	Port (CLK:std_logic;
			RST : std_logic;
			rd_index1 : in std_logic_vector( 3 downto 0);
			rd_index2: in std_logic_vector( 3 downto 0);
			WbAddr : in std_logic_vector( 3 downto 0);
			RqstAddr: in std_logic_vector( 3 downto 0);
			dataHazard : out std_logic);

end DependencyDetector;

architecture Behavioral of DependencyDetector is

----------------------------------------------Signals and Types for Hazard Detection --------------------------------------------	
	type busy_array is array (integer range 0 to 7) of std_logic_vector(3 downto 0);
   signal busy_file : busy_array := (others => ( "0111"));
	signal BusyField1 :std_logic_vector(3 downto 0):= "0111";
	signal BusyField2 :std_logic_vector(3 downto 0):= "0111";

begin
	
	dataHazard <='0' when 		(( 	 busyField1 = "0111" and busyField2 = "0111" ) or
										 (	busyField1 = RqstAddr	and busyField2 = "0111" ) or
										 (	busyField2 = RqstAddr	and busyField1 = "0111" )) else '1';
	--Write operations
	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if( WbAddr="1000" ) then
				busy_file(0) <= "0111";
			elsif (RqstAddr="1000" ) then
				busy_file(0) <= "1000";
			end if;
		end if;
	end process;
	
	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if( WbAddr="1001" ) then
				busy_file(1) <= "0111";
			elsif ( RqstAddr="1001" ) then
				busy_file(1) <= "1001";
			end if;
		end if;
	end process;

	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if ( WbAddr="1010" )then
				busy_file(2) <= "0111"; 
			elsif ( RqstAddr="1010" ) then
				busy_file(2) <= "1010";
			end if;
		end if;
	end process;

	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if ( WbAddr="1011" )then
				busy_file(3) <= "0111"; 
			elsif ( RqstAddr="1011" ) then
				busy_file(3) <= "1011";
			end if;
		end if;
	end process;

	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if  ( WbAddr="1100" )then
				busy_file(4) <= "0111"; 
			elsif ( RqstAddr="1100" ) then
				busy_file(4) <= "1100";
			end if;
		end if;
	end process;
	
	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if( WbAddr="1101" ) then
				busy_file(5) <= "0111"; 
			elsif  ( RqstAddr="1101" )then
				busy_file(5) <= "1101";
			end if;
		end if;
	end process;
	
	process(clk,RqstAddr,WbAddr)
	begin
		if falling_edge(clk) then
			if  ( WbAddr="1110" ) then
				busy_file(6) <= "0111"; 
			elsif ( RqstAddr="1110" )then
				busy_file(6) <= "1110";
			end if;
		end if;
	end process;
	
	process(clk,RqstAddr,WbAddr)
	begin 
		if falling_edge(clk) then
			if( WbAddr="1111" ) then
				busy_file(7) <= "0111"; 
			elsif  ( RqstAddr="1111" )then
				busy_file(7) <= "1111";
			end if;
		end if;
	end process;
	
	BusyField1 <=     busy_file(0) when(rd_index1="1000") else
							busy_file(1) when(rd_index1="1001") else
							busy_file(2) when(rd_index1="1010") else
							busy_file(3) when(rd_index1="1011") else
							busy_file(4) when(rd_index1="1100") else
							busy_file(5) when(rd_index1="1101") else
							busy_file(6) when(rd_index1="1110") else
							busy_file(7) when(rd_index1="1111") else "0111";

	BusyField2 <=     busy_file(0) when(rd_index2="1000") else
							busy_file(1) when(rd_index2="1001") else
							busy_file(2) when(rd_index2="1010") else
							busy_file(3) when(rd_index2="1011") else
							busy_file(4) when(rd_index2="1100") else
							busy_file(5) when(rd_index2="1101") else
							busy_file(6) when(rd_index2="1110") else 
							busy_file(7) when(rd_index2="1111") else "0111";	

end Behavioral;

