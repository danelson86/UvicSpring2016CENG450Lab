----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:35:47 03/01/2016 
-- Design Name: 
-- Module Name:    MEMtoWB_pipeline - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEMtoWB_pipeline is

	Port(
			clk: in std_logic := '0';
			rst : in std_logic := '0';
			Data1 :  in	STD_LOGIC_VECTOR (15 downto 0) := X"0000";
			WbRqstAddr :  in STD_LOGIC_VECTOR (2 downto 0) := "000";
			Microcode :in std_logic_vector(3 downto 0):= "0000";
			Data1x : out  STD_LOGIC_VECTOR (15 downto 0) := X"0000";
			WbRqstAddrx : out  STD_LOGIC_VECTOR (2 downto 0) := "000";
			MicrocodeX :out std_logic_vector(3 downto 0):= "0000");
			  
end MEMtoWB_pipeline;

architecture Behavioral of MEMtoWB_pipeline is


component pipeline_16bit is
		Port(
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			input : in STD_LOGIC_VECTOR(15 downto 0);
			output : out STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	component pipeline_5deep_3bit is
		Port(
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			input : in STD_LOGIC_VECTOR(2 downto 0);
			output : out STD_LOGIC_VECTOR(2 downto 0));
	end component;
	
	component pipeline_4bit is
		Port(
			clk : in STD_LOGIC := '0';
			rst : in STD_LOGIC := '0';
			input : in STD_LOGIC_VECTOR(3 downto 0):= X"0";
			output : out STD_LOGIC_VECTOR(3 downto 0):= X"0");
	 end component;


begin
	
	data1Pipe : pipeline_16bit port map(clk,rst,data1,data1x);
	wbRqstAddrPipe : pipeline_5deep_3bit port map(clk,rst,wbRqstAddr,wbRqstAddrx);
	microcodePipe : pipeline_4bit port map(clk,rst,microcode,microcodeX);

end Behavioral;

