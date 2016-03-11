--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_9904_67
-- /___/   /\     Timestamp : 02/27/2016 13:16:02
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

entity ram_16x16 is
   port ( ADDR  : in    std_logic_vector (15 downto 0); 
          CLK   : in    std_logic; 
          D_IN  : in    std_logic_vector (15 downto 0); 
          WE    : in    std_logic; 
          D_OUT : out   std_logic_vector (15 downto 0));
end ram_16x16;

architecture BEHAVIORAL of ram_16x16 is
begin
end BEHAVIORAL;


