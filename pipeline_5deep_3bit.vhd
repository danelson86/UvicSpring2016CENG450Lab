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


entity pipeline_5deep_3bit is
		Port(
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			input : in STD_LOGIC_VECTOR(2 downto 0);
			output : out STD_LOGIC_VECTOR(2 downto 0));
end pipeline_5deep_3bit;

architecture Behavioral of pipeline_5deep_3bit is

begin
 
	process (clk,rst,input)
    begin
		if(rst = '1') then 
			output <= "000";
		elsif (clk'event and clk = '1') then
			output <= input;

		end if;
    end process; 

end Behavioral;

