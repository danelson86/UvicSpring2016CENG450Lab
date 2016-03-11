----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:13 02/26/2016 
-- Design Name: 
-- Module Name:    IB_to_EX_register - Behavioral 
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
use IEEE.numeric_std.all;
use work.MicroprocessorMisc.ALL;

entity IDtoEX_Pipeline is
	Port(
			  clk : in std_logic := '0';
			  rst : in std_logic := '0';
			  
			  Data1 : in  STD_LOGIC_VECTOR (15 downto 0) := X"0000";
			  Data2 : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";		  
			  WbRqstAddr : in  STD_LOGIC_VECTOR (2 downto 0) := "000";
			  Microcode : in std_logic_vector(3 downto 0):= X"0";
			  DataIn :	in DataBus;
			  	  
			  Data1x : out  STD_LOGIC_VECTOR (15 downto 0) := X"0000";
			  Data2x : out  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
			  WbRqstAddrx : out  STD_LOGIC_VECTOR (2 downto 0) := "000";
			  MicrocodeX : out std_logic_vector(3 downto 0):= X"0");
			  
end IDtoEX_Pipeline;

architecture Behavioral of IDtoEX_Pipeline is
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
	
	data1pipe : pipeline_16bit port map(clk,rst,data1,data1x);
	data2pipe : pipeline_16bit port map(clk,rst,data2,data2x);
	wb_rqst_addrpipe : pipeline_5deep_3bit port map (clk,rst,WbRqstAddr,WbRqstAddrX);
	microcodepipe : pipeline_4bit  port map (clk,rst,microcode,microcodeX);
	
	
end Behavioral;

