--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_4464_66
-- /___/   /\     Timestamp : 02/26/2016 10:26:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity rom_8x16 is
   port ( addra : in    std_logic_vector (7 downto 0); 
          clka  : in    std_logic; 
          douta : out   std_logic_vector (15 downto 0));
end rom_8x16;

architecture BEHAVIORAL of rom_8x16 is
begin
end BEHAVIORAL;

-- synopsys translate_off
configuration CFG_rom_8x16 of  rom_8x16 is
   for BEHAVIORAL
   end for;
end CFG_rom_8x16;
-- synopsys translate_on

