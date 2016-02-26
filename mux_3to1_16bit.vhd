library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3to1_16bit is
    Port ( in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           in3 : in  STD_LOGIC_VECTOR (15 downto 0);
           muxout : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end mux_3to1_16bit;

architecture Behavioral of mux_3to1_16bit is

begin
	--Sends in1 to muxout if sel=0. Sends in2 to muxout if sel=1. Otherwise, in3 is sent to muxout
	process(in1, in2, in3, sel)
	begin
		case sel is
			when "00" => muxout <= in1;
			when "01" => muxout <= in2;
			when others => muxout <= in3;
		end case;
	end process;

end Behavioral;

