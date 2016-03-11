----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:25:03 02/27/2016 
-- Design Name: 
-- Module Name:    decode_instruction - Behavioral 
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

entity decode_instruction is
end decode_instruction;

architecture Behavioral of decode_instruction is


	component register_file is
		port(	rst : in std_logic;
			clk : in std_logic;
			--read signals
			rd_index1: in std_logic_vector(2 downto 0);
			rd_data1: out std_logic_vector(15 downto 0);
			rd_index2: in std_logic_vector(2 downto 0);
			rd_data2: out std_logic_vector(15 downto 0);
			--write signals
			wr_index: in std_logic_vector(2 downto 0);
			wr_data: in std_logic_vector(15 downto 0);
			wr_enable: in std_logic);
	end component;
	
	-- Signals for Register File
	signal rd_index1 : std_logic_vector(2 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_index2 : std_logic_vector(2 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_index : std_logic_vector(2 downto 0);
	signal wr_data : std_logic_vector(15 downto 0);
	signal wr_enable : std_logic;

begin


end Behavioral;

