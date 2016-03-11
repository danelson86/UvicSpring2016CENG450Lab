----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:57 02/28/2016 
-- Design Name: 
-- Module Name:    mux_4to2_16bit - Behavioral 
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

entity mux_4to2_16bit is

    Port ( 
			  in0 : in  STD_LOGIC_VECTOR (15 downto 0);	
			  in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           in3 : in  STD_LOGIC_VECTOR (15 downto 0);
           muxout1 : out  STD_LOGIC_VECTOR (15 downto 0);
			  muxout2 : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end mux_4to2_16bit;

architecture Behavioral of mux_4to2_16bit is



begin


	--Sends in1 to muxout if sel=0. Sends in2 to muxout if sel=1. Otherwise, in3 is sent to muxout
	process(in0, in1, in2, in3, sel)
	begin
		case sel is
			when "00" => muxout2 <= in1;
			when "01" => muxout2 <= in2;
			when others => muxout2 <= in3;
		end case;
		muxout1 <= in0;
	end process;


end Behavioral;

