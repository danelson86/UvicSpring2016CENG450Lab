library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_3to1_16bit is
    Port ( muxout1 : out  STD_LOGIC_VECTOR (15 downto 0);
           muxout2 : out  STD_LOGIC_VECTOR (15 downto 0);
           muxout3 : out  STD_LOGIC_VECTOR (15 downto 0);
           muxin : in  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end demux_3to1_16bit;

architecture Behavioral of demux_3to1_16bit is

begin
	--Sends in1 to muxout if sel=0. Sends in2 to muxout if sel=1. Otherwise, in3 is sent to muxout
	process(muxin, sel)
	begin
		case sel is
			when "00" => 
				muxout1 <= muxin;
				muxout2 <= X"0000";
				muxout3 <= X"0000";
			when "01" => 
				muxout1 <= X"0000";
				muxout2 <= muxin;
				muxout3 <= X"0000";
			when others => 
				muxout1 <= X"0000";
				muxout2 <= X"0000";
				muxout3 <= muxin;
		end case;
	end process;

end Behavioral;

