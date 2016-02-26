----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:42 02/23/2016 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity memory is
    Port ( MemWriteData : in  STD_LOGIC_VECTOR (15 downto 0);
           MemReadData : out  STD_LOGIC_VECTOR (15 downto 0);
           MemWriteEnable : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end memory;

architecture Behavioral of memory is

--
type ram_typ is array(0 to 63) of STD_LOGIC_VECTOR(15 downto 0);

begin
--
--	process(RST, MemWriteEnable )


end Behavioral;

--
--library IEEE;
--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--entity ram is
--    port (
--        r_w, en, reset: in STD_LOGIC;
--        aBus: in STD_LOGIC_VECTOR(15 downto 0);
--        dBus: inout STD_LOGIC_VECTOR(15 downto 0)
--    );
--end ram;
--architecture ramArch of ram is
--type ram_typ is array(0 to 63) of STD_LOGIC_VECTOR(15 downto 0);
--signal ram: ram_typ;
--begin
--  process(reset, r_w) begin
--  	if reset = '1' then
--  		ram(0) <= x"000A";
--  		ram(1) <= x"3000";
--  		ram(2) <= x"200B";
--  		ram(3) <= x"100C";
--  		ram(4) <= x"3001";
--  		ram(10) <= x"0010";
--  		ram(11) <= x"0011";
--  		for i in 12 to 63 loop
--  			ram(i) <= x"0000";
--  		end loop;
-- 	elsif r_w'event and r_w = '0' then
--  		ram(conv_integer(unsigned(aBus))) <= dBus;
--  	end if;
--  end process;
--  dBus <= ram(conv_integer(unsigned(aBus)))
--  		when reset = '0' and en = '1' and r_w = '1' else
--	  "ZZZZZZZZZZZZZZZZ";
--end ramArch;

