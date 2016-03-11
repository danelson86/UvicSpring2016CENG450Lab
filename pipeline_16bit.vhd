----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:47:25 03/01/2016 
-- Design Name: 
-- Module Name:    pipeline_16bit - Behavioral 
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
USE ieee.numeric_std.ALL;

entity pipeline_16bit is
		Port(
			clk : in STD_LOGIC := '0';
			rst : in STD_LOGIC := '0';
			input : in STD_LOGIC_VECTOR(15 downto 0):= X"0000";
			output : out STD_LOGIC_VECTOR(15 downto 0):= X"0000");
end pipeline_16bit;

architecture Behavioral of pipeline_16bit is

begin

	 process (clk,rst,input)
    begin
		
		if (clk'event and clk = '1') then
			if(rst = '1') then
				output <= X"0000";
			else
				output <= input;
			end if;
		end if;
    end process; 

end Behavioral;
