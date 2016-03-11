-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY tb IS
  END tb;

  ARCHITECTURE behavior OF tb IS 

  -- Component Declaration
          COMPONENT IFtoID_pipeline
          PORT(
     			clk : in STD_LOGIC;
				rst : in STD_LOGIC;
				instruction_in : in STD_LOGIC_VECTOR(15 downto 0);
				insturction_out : out STD_LOGIC_VECTOR(15 downto 0);
				PC_in : in STD_LOGIC_VECTOR(15 downto 0);
				PC_out : out STD_LOGIC_VECTOR(15 downto 0));
          END COMPONENT;

			signal clk : STD_LOGIC;
			signal rst : STD_LOGIC;
			signal instruction_in : STD_LOGIC_VECTOR(15 downto 0);
			signal insturction_out :  STD_LOGIC_VECTOR(15 downto 0);
			signal PC_in :  STD_LOGIC_VECTOR(15 downto 0);
			signal PC_out :  STD_LOGIC_VECTOR(15 downto 0);
			
			constant clk_period : time := 20 ns;

  BEGIN

  -- Component Instantiation
          uut: IFtoID_pipeline PORT MAP(
                  clk => clk,
                  rst => rst,
						instruction_in => instruction_in,
						insturction_out => insturction_out,
						PC_in => PC_in,
						PC_out => PC_out
          );
	
	   clk_process :process 
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;


  --  Test Bench Statements
     test : PROCESS
     BEGIN

        wait for clk_period*10; -- wait until global set/reset completes
		  
		  instruction_in <= X"0001";
		  wait for clk_period;
		  
		  instruction_in <= X"0002";
		  wait for clk_period;
		  
		  instruction_in <= X"0003";
		  wait for clk_period;
		  
		  instruction_in <= X"0004";
		  wait for clk_period;
		  instruction_in <= X"0005";
		  wait for clk_period;
		  
		  instruction_in <= X"0006";
		  wait for clk_period;
		  

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
