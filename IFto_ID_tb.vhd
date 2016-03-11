--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:55:47 02/26/2016
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/IFto_ID_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IFtoID_register
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
 
ENTITY IFto_ID_tb IS
END IFto_ID_tb;
 
ARCHITECTURE behavior OF IFto_ID_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IFtoID_register
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         instruction_in : IN  std_logic_vector(15 downto 0);
         insturction_out : OUT  std_logic_vector(15 downto 0);
         of_error_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal instruction_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal insturction_out : std_logic_vector(15 downto 0);
   signal of_error_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 130 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IFtoID_register PORT MAP (
          clk => clk,
          rst => rst,
          instruction_in => instruction_in,
          insturction_out => insturction_out,
          of_error_out => of_error_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      
		instruction_in <=	X"0000"; 
		wait for clk_period;
		
		instruction_in <=	X"0001"; 
		wait for clk_period;
		
		instruction_in <=	X"0002"; 
		wait for clk_period;
		
		instruction_in <=	X"0002"; 
		wait for clk_period;
		
		instruction_in <=	X"0003"; 
		wait for clk_period;
		
		instruction_in <=	X"0004"; 
		wait for clk_period;
		
		instruction_in <=	X"0005"; 
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
