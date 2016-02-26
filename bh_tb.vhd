--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:46:32 02/24/2016
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/lab_feb22b/bh_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: branch_handler
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
USE ieee.numeric_std.ALL;
 
ENTITY bh_tb IS
END bh_tb;
 
ARCHITECTURE behavior OF bh_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT branch_handler
    PORT(
			CLK : in std_logic;
         Opcode : IN  std_logic_vector(6 downto 0);
         disp1 : IN  std_logic_vector(8 downto 0);
         disps : IN  std_logic_vector(5 downto 0);
         current_pc : IN  std_logic_vector(15 downto 0);
         ra_in : IN  std_logic_vector(15 downto 0);
         r7_in : IN  std_logic_vector(15 downto 0);
         z_flag : IN  std_logic;
         n_flag : IN  std_logic;
         BranchTaken : OUT  std_logic;
         next_pc : OUT  std_logic_vector(15 downto 0);
			r7_out  : out  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
	signal CLK : std_logic := '0';
   signal Opcode : std_logic_vector(6 downto 0) := (others => '0');
   signal disp1 : std_logic_vector(8 downto 0) := (others => '0');
   signal disps : std_logic_vector(5 downto 0) := (others => '0');
   signal current_pc : std_logic_vector(15 downto 0) := (others => '0');
   signal ra_in : std_logic_vector(15 downto 0) := (others => '0');
   signal r7_in : std_logic_vector(15 downto 0) := (others => '0');
   signal z_flag : std_logic := '0';
   signal n_flag : std_logic := '0';

 	--Outputs
   signal BranchTaken : std_logic;
   signal next_pc : std_logic_vector(15 downto 0);
   signal data_out : std_logic_vector(15 downto 0);
	signal r7_out  :   std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: branch_handler PORT MAP (
			 CLK => CLK,
          Opcode => Opcode,
          disp1 => disp1,
          disps => disps,
          current_pc => current_pc,
          ra_in => ra_in,
          r7_in => r7_in,
          z_flag => z_flag,
          n_flag => n_flag,
          BranchTaken => BranchTaken,
          next_pc => next_pc,
			 r7_out => r7_out
        );

   -- Clock process definitions
   clock_process :process
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

		current_pc <= X"0080";
		disp1 <= "000000010";
		Opcode <= "1000000";
		wait for 100 ns;	
		
		
		Opcode <= "1000000";
		Z_FLAG <= '1';
		
		wait for 100 ns;	
		
		disp1 <= "111111000";
		
		wait for 100 ns;	
		
		disp1 <= "011111000";
 
      -- insert stimulus here 
		
		wait for 100 ns;	
		
		disp1 <= "100000000";

      wait;
   end process;

END;
