LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY register_file_tb IS
END register_file_tb;
 
ARCHITECTURE behavior OF register_file_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         rd_index1 : IN  std_logic_vector(2 downto 0);
         rd_data1 : OUT  std_logic_vector(15 downto 0);
         rd_index2 : IN  std_logic_vector(2 downto 0);
         rd_data2 : OUT  std_logic_vector(15 downto 0);
         wr_index : IN  std_logic_vector(2 downto 0);
         wr_data : IN  std_logic_vector(15 downto 0);
         wr_enable : IN  std_logic;
			
			reg1 : out std_logic_vector(15 downto 0);
			reg2 : out std_logic_vector(15 downto 0);
			reg3 : out std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal rd_index1 : std_logic_vector(2 downto 0) := (others => '0');
   signal rd_index2 : std_logic_vector(2 downto 0) := (others => '0');
   signal wr_index : std_logic_vector(2 downto 0) := (others => '0');
   signal wr_data : std_logic_vector(15 downto 0) := (others => '0');
   signal wr_enable : std_logic := '0';
	signal reg1 :  std_logic_vector(15 downto 0);
	signal reg2 :  std_logic_vector(15 downto 0);
	signal reg3 :  std_logic_vector(15 downto 0);
 	--Outputs
   signal rd_data1 : std_logic_vector(15 downto 0);
   signal rd_data2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          rst => rst,
          clk => clk,
          rd_index1 => rd_index1,
          rd_data1 => rd_data1,
          rd_index2 => rd_index2,
          rd_data2 => rd_data2,
          wr_index => wr_index,
          wr_data => wr_data,
          wr_enable => wr_enable,
			 reg1=> reg1,
			 reg2 => reg2,
			 reg3 => reg3
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
		
		--print out initial values
		rd_index1 <= "000";
		rd_index2 <= "001";
		wait for 100 ns;	
		rd_index1 <= "010";
		rd_index2 <= "011";
		wait for 100 ns;
		rd_index1 <= "100";
		rd_index2 <= "101";
		wait for 100 ns;
		rd_index1 <= "110";
		rd_index2 <= "111";
		wait for 100 ns;
		
		--Testing write
		wr_enable <= '1';
		wr_index <= "000";
		wr_data <= X"003A";
		wait for 100 ns;
		wr_enable <= '0';
		wr_data <= X"0000";
		rd_index1 <= "000";
		wait for 100 ns;


      wait;
   end process;

END;
