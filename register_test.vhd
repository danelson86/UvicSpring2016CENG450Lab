--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:56:56 02/04/2016
-- Design Name:   
-- Module Name:   C:/Users/nelsonda/lab2/register_test.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.all;
entity register_test is
end register_test;
architecture behavioural of register_test is

	component register_file
	 port(rst : in std_logic;
		clk: in std_logic;
		rd_index1: in std_logic_vector(2 downto 0); 

		rd_index2: in std_logic_vector(2 downto 0);
		rd_data1: out std_logic_vector(15 downto 0);
		rd_data2: out std_logic_vector(15 downto 0);
		wr_index: in std_logic_vector(2 downto 0);
		wr_data: in std_logic_vector(15 downto 0);
		wr_enable: in std_logic);
	end component;
	
signal rst : std_logic;
signal clk : std_logic;
signal rd_index1 : std_logic_vector(2 downto 0);
signal rd_index2 : std_logic_vector(2 downto 0);
signal rd_data1 : std_logic_vector(15 downto 0);
signal rd_data2 : std_logic_vector(15 downto 0);
signal wr_index : std_logic_vector(2 downto 0);
signal wr_data : std_logic_vector(15 downto 0);
signal wr_enable : std_logic;

begin

	u0:register_file port map(rst, clk, rd_index1, rd_index2, rd_data1, rd_data2, wr_index, wr_data,
	wr_enable);
	
	process
		begin
		clk <= '0';
		wait for 10 us;
		clk<='1';
		wait for 10 us;
	end process;
		
	process
		begin
		rst <= '1';
		rd_index1 <= "000";
		rd_index2 <= "000";
		wr_enable <= '0';
		wr_index <= "000";
		wr_data <= "0000000000000000";
		wait until (clk='0' and clk'event);
		wait until (clk='1' and clk'event);
		wait until (clk='1' and clk'event);
		rst <= '0';
		wait until (clk='1' and clk'event);
		
		--testing init values
		rd_index1 <= "000";
		rd_index2 <= "001";
		wait until (clk='1' and clk'event);
		rd_index1 <= "010";
		rd_index2 <= "011";
		wait until (clk='1' and clk'event);
		rd_index1 <= "100";
		rd_index2 <= "101";
		wait until (clk='1' and clk'event);
		rd_index1 <= "110";
		rd_index2 <= "111";
		wait until (clk='1' and clk'event);
		
		--orig
		wait until (clk='1' and clk'event);
		wr_enable <= '1';
		wr_data <= X"002a";
		wait until (clk='1' and clk'event);
		wr_index <= "001";
		wr_data <= X"0037"; 
		wait until (clk='1' and clk'event);
		wr_index <= "010";
		wr_data <= X"008b";
		wait until (clk='1' and clk'event);
		wr_index <= "011";
		wr_data <= X"00fd";
		wait until (clk='1' and clk'event);
		wr_enable <= '0';
		wait until (clk='1' and clk'event);
		rd_index2 <= "001";
		wait until (clk='1' and clk'event);
		rd_index1 <= "010";
		rd_index2 <= "011";
		wait;
		
	end process;
	
end behavioural; 