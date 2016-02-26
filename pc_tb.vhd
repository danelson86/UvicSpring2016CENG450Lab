--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:55:24 02/23/2016
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/lab_feb22b/pc_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: program_counter
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
 
ENTITY pc_tb IS
END pc_tb;
 
ARCHITECTURE behavior OF pc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT program_counter
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         IsBranchTaken : IN  std_logic;
         BranchAddr : IN  std_logic_vector(15 downto 0);
         PcOut : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal IsBranchTaken : std_logic := '0';
   signal BranchAddr : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal PcOut : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: program_counter PORT MAP (
          CLK => CLK,
          RST => RST,
          IsBranchTaken => IsBranchTaken,
          BranchAddr => BranchAddr,
          PcOut => PcOut
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		BranchAddr <= X"00FF";
		IsBranchTaken <= '0';
		
		wait for 100 ns;	
		
		BranchAddr <= X"FF00";
		IsBranchTaken <= '1';

		


      wait;
   end process;

END;
