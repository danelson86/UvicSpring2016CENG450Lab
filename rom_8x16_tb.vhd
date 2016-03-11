--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:22:59 02/26/2016
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/rom_8x16_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rom_8x16
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rom_8x16_tb IS
END rom_8x16_tb;
 
ARCHITECTURE behavior OF rom_8x16_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rom_8x16
    PORT(
         addra : IN  std_logic_vector(7 downto 0);
         clka : IN  std_logic;
         douta : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addra : std_logic_vector(7 downto 0) := (others => '0');
   signal clka : std_logic := '0';

 	--Outputs
   signal douta : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clka_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_8x16 PORT MAP (
          addra => addra,
          clka => clka,
          douta => douta
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		addra <= X"01";
      wait for clka_period;
		
		addra <= X"02";
      wait for clka_period;
		
		addra <= X"03";
      wait for clka_period;
		
		addra <= X"04";
      wait for clka_period;
		
		addra <= X"05";
      wait for clka_period;
		addra <= X"06";
      wait for clka_period;
		addra <= X"07";
      wait for clka_period;
		addra <= X"08";
      wait for clka_period;
		addra <= X"09";
      wait for clka_period;
		addra <= X"0A";
      wait for clka_period;
		addra <= X"0B";
      wait for clka_period;

      -- insert stimulus here 

      wait;
   end process;

END;
