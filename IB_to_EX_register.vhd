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

entity IB_to_EX_register is
	Port(
			  clk : in std_logic;
			  rst : in std_logic;
			  
			  Data_1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Data_2 : in  STD_LOGIC_VECTOR (15 downto 0);		  
			  WB_Addr : in  STD_LOGIC_VECTOR (2 downto 0);
			  
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
			  
			  
			  Data_1x : out  STD_LOGIC_VECTOR (15 downto 0);
			  Data_2x : out  STD_LOGIC_VECTOR (15 downto 0);
			  WB_AddrX : out  STD_LOGIC_VECTOR (2 downto 0);
			  add_enx : out std_logic;
			  sub_enx : out std_logic;
			  mul_enx : out std_logic;
			  nand_enx : out std_logic;
			  shl_enx : out std_logic;
			  shr_enx : out std_logic;
			  load_enx : out std_logic;
			  loadimm_enx : out std_logic;
			  mov_enx : out std_logic;
			  in_enx :  out std_logic;
			  out_enx : out std_logic;
			  store_enx :out std_logic;
			  
			  
			 );


end IB_to_EX_register;

architecture Behavioral of IB_to_EX_register is
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
	
	component pipeline_5deep_1bit is
		Port(
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			input : in STD_LOGIC;
			output : out STD_LOGIC);
	end component;

begin

			  add_enx : out std_logic;
			  sub_enx : out std_logic;
			  mul_enx : out std_logic;
			  nand_enx : out std_logic;
			  shl_enx : out std_logic;
			  shr_enx : out std_logic;
			  load_enx : out std_logic;
			  loadimm_enx : out std_logic;
			  mov_enx : out std_logic;
			  in_enx :  out std_logic;
			  out_enx : out std_logic;
			  store_enx :out std_logic;

	data1 : pipeline_16bit port map(clk,rst,data_1,data_1x);
	data2 : pipeline_16bit port map(clk,rst,data_2,data_2x);
	wb_addr : pipeline_5deep_3bit port map (clk,rst,WB_Addr,WB_AddrX);
	
	
	add_enable : pipeline_5deep_1bit  port map (clk,rst,add_en,add_enx);
	sub_enable : pipeline_5deep_1bit  port map (clk,rst,sub_en,sub_enx);
	mul_enable : pipeline_5deep_1bit  port map (clk,rst,mul_en,mul_enx);
	nand_enable : pipeline_5deep_1bit  port map (clk,rst,nand_en,nand_enx);
	shl_en : pipeline_5deep_1bit  port map (clk,rst,shl_en,shl_enx);
	shr_enable : pipeline_5deep_1bit  port map (clk,rst,shr_en,shr_enx);
	load_enable : pipeline_5deep_1bit  port map (clk,rst,load_en,load_enx);
	loadimm_enable : pipeline_5deep_1bit  port map (clk,rst,loadimm_en,loadimm_enx);
	mov_enable : pipeline_5deep_1bit  port map (clk,rst,mov_en,mov_enx);
	in_enable :pipeline_5deep_1bit  port map (clk,rst,in_en,in_enx);
	out_enable :pipeline_5deep_1bit  port map (clk,rst,out_en,out_enx);
	store_enable:pipeline_5deep_1bit  port map (clk,rst,store_en,store_enx);
end Behavioral;

