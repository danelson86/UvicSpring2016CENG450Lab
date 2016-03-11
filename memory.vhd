library IEEE;
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use UNISIM.VComponents.all;
use work.MicroprocessorMisc.ALL;

entity memory is
    Port ( 
			CLK : in  STD_LOGIC := '0';
			RST : in  STD_LOGIC := '0';
			DataIn : in DataBus:= NULL_DATA_BUS;
			DataOut : out DataBus:= NULL_DATA_BUS);
end memory;

architecture Behavioral of memory is

--Proof of concept only
--------------------------Begin Register---------------------------------------------

	component register_file is
		port(
				rst : in std_logic;
				clk : in std_logic;
				--read signals
				rd_index1: in std_logic_vector(3 downto 0);
				rd_data1: out std_logic_vector(15 downto 0);
				rd_index2: in std_logic_vector(3 downto 0);
				rd_data2: out std_logic_vector(15 downto 0);
				--write signals
				wr_index: in std_logic_vector(3 downto 0);
				wr_data: in std_logic_vector(15 downto 0));
	end component;
	
	-- Signals for Register File
	signal rd_index1 : std_logic_vector(3 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_index2 : std_logic_vector(3 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_index : std_logic_vector(3 downto 0);
	signal wr_data : std_logic_vector(15 downto 0);
	
	-------------------------------End Register --------------------------------------------------------

	signal DataOutTemp : DataBus;
begin

	MEM : register_file port map(rst, clk, rd_index1,rd_data1,rd_index2,rd_data2, wr_index,wr_data);
	
	wr_index <= DataIn.Data1(3 downto 0) when (DataIn.Microcode = mSTORE) else (others => '0');
	wr_data <= DataIn.Data2;
---------------------------------- Load Operation ----------------------------------------------------
	rd_index1 <= DataIn.Data1(3 downto 0);
	DataOutTemp.Data1 <=  rd_data1 when (DataIn.Microcode = mLOAD) else DataIn.Data1;
	
	DataOutTemp.Data2 <= DataIn.Data2;
	DataOutTemp.addr <= DataIn.addr;
	DataOutTemp.microcode <= DataIn.microcode;
	
	process(clk)
	begin
		if rising_edge(clk) then
			DataOut <= DataOutTemp;
		end if;
	end process;
	
end Behavioral;
