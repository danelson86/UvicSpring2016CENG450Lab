--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:56:59 03/09/2016
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/MasterRegister_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MasterRegister
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
 
ENTITY MasterRegister_tb IS
END MasterRegister_tb;
 
ARCHITECTURE behavior OF MasterRegister_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MasterRegister
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         rd_index1 : IN  std_logic_vector(3 downto 0);
         rd_data1 : OUT  std_logic_vector(15 downto 0);
         rd_index2 : IN  std_logic_vector(3 downto 0);
         rd_data2 : OUT  std_logic_vector(15 downto 0);
         wb_rqst_addr : IN  std_logic_vector(3 downto 0);
         wb_addr : IN  std_logic_vector(3 downto 0);
         wr_data : IN  std_logic_vector(15 downto 0);
         dataHazard : OUT  std_logic
--			busy1 : out std_logic;
--			busy2 : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal rd_index1 : std_logic_vector(3 downto 0) := (others => '0');
   signal rd_index2 : std_logic_vector(3 downto 0) := (others => '0');
   signal wb_rqst_addr : std_logic_vector(3 downto 0) := (others => '0');
   signal wb_addr : std_logic_vector(3 downto 0) := (others => '0');
   signal wr_data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal rd_data1 : std_logic_vector(15 downto 0);
   signal rd_data2 : std_logic_vector(15 downto 0);
   signal dataHazard : std_logic;
	
	signal busy1 :  std_logic;
	signal busy2 :  std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MasterRegister PORT MAP (
          rst => rst,
          clk => clk,
          rd_index1 => rd_index1,
          rd_data1 => rd_data1,
          rd_index2 => rd_index2,
          rd_data2 => rd_data2,
          wb_rqst_addr => wb_rqst_addr,
          wb_addr => wb_addr,
          wr_data => wr_data,
          dataHazard => dataHazard
--			 busy1 => busy1,
--			 busy2 => busy2
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
		wb_rqst_addr <= "1000";
      wait for clk_period;


		wb_rqst_addr <= "0000";
		rd_index1 <= "1000";
		wait for clk_period;
		rd_index2 <= "1000";
		
		wait for clk_period;
		
		wb_addr <= "1000";
		
		
		wait for clk_period;
		
		wb_rqst_addr <= "1000";
		
		
		wait for clk_period;
		
		wb_addr <= "0000";

      -- insert stimulus here 
		wait for clk_period*3;
		
		wb_addr <= "1000";
      wait;
   end process; 

END;
