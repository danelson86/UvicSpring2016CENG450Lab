--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:30:31 02/26/2016
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/IF_TB.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: instruction_fetch
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
 
ENTITY IF_TB IS
END IF_TB;
 
ARCHITECTURE behavior OF IF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_fetch
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         IsBranchTaken : IN  std_logic;
         BranchAddr : IN  std_logic_vector(6 downto 0);
         Istr_out : out  STD_LOGIC_VECTOR (15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal IsBranchTaken : std_logic := '0';
   signal BranchAddr : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal Istr_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_fetch PORT MAP (
          CLK => CLK,
          RST => RST,
          IsBranchTaken => IsBranchTaken,
          BranchAddr => BranchAddr,
          Istr_out => Istr_out
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

      wait for CLK_period*10;
		
		for I in 0 to 100 loop
			wait for CLK_period;
		end loop;

      -- insert stimulus here 

      wait;
   end process;

END;
