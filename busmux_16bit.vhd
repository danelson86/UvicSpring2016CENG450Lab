library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity busmux_16bit is
    Port ( 
			  in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC;
			  mux_out : out  STD_LOGIC_VECTOR (15 downto 0)
			  );
end busmux_16bit;

architecture Behavioral of busmux_16bit is

begin
	--Sends in1 to mux_out if sel=0. Otherwise, sends in2 to mux_out if sel=1
	process(in1, in2, sel)
	begin
		case sel is
			when '1' => mux_out <= in2;
			when others => mux_out <= in1;
		end case;
	end process;
end Behavioral;

