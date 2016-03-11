LIBRARY ieee;
Library wor;
USE ieee.std_logic_1164.ALL;
use work.MicroprocessorMisc.ALL;
 
 
ENTITY BusyRegister_tb IS
END BusyRegister_tb;
 
ARCHITECTURE behavior OF BusyRegister_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BusyStatusRegister
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         --read signals
			rd_index1: in std_logic_vector(3 downto 0) := (others => '0');
			rd_data1: out std_logic  := '0';
			rd_index2: in std_logic_vector(3 downto 0) := (others => '0');
			rd_data2: out std_logic  := '0';
         wb_rqst_addr : IN  std_logic_vector(3 downto 0);
         wb_addr : IN  std_logic_vector(3 downto 0));
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal rd_index1:  std_logic_vector(3 downto 0) := (others => '0');
	signal rd_en1 :  std_logic := '0';
	signal rd_index2:  std_logic_vector(3 downto 0) := (others => '0');
   signal wb_rqst_addr : std_logic_vector(3 downto 0) := (others => '0');
   signal wb_rqst : std_logic := '0';
   signal wb_addr : std_logic_vector(3 downto 0) := (others => '0');
   signal wb_enable : std_logic := '0';
--	signal busyReg : busyStatusRegister;
 	--Outputs
   signal rd_data1 : std_logic;
   signal rd_data2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BusyStatusRegister PORT MAP (
          rst => rst,
          clk => clk,
          rd_index1 => rd_index1,
          rd_data1 => rd_data1,
          rd_index2 => rd_index2,
          rd_data2 => rd_data2,
          wb_rqst_addr => wb_rqst_addr,
          wb_addr => wb_addr);

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
		rst <= '0';
		rd_index1<= "1000";
		rd_index2<= "1001";
--      wait for 100 ns;	
		 wb_rqst_addr <= "1001";
		wb_addr <= "1000";


      wait for clk_period;
--		wb_rqst_addr <= "001";
--		wb_rqst <= '1';

      wait for clk_period;
--		wb_rqst_addr <= "1001";
		wb_addr <= "1001";
		

      wait for clk_period;
--		wb_enable <= '1';

		wait for clk_period;
--      wb_addr <= "000";
--		wb_enable <= '1'; 

	
		 

      wait;
   end process;

END;
