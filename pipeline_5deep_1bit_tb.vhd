-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY pipeline_5deep_1bit_tb IS
  END pipeline_5deep_1bit_tb;

  ARCHITECTURE behavior OF pipeline_5deep_1bit_tb IS 

  -- Component Declaration
          COMPONENT pipeline_5deep_1bit
          PORT(
					clk : in STD_LOGIC;
					rst : in STD_LOGIC;
					input : in STD_LOGIC;
					output : out STD_LOGIC
                  );
          END COMPONENT;

			signal clk :  STD_LOGIC;
			signal rst :  STD_LOGIC;
			signal input :  STD_LOGIC;
			signal output :  STD_LOGIC;

         constant clk_period : time := 20 ns;
 
  BEGIN

  -- Component Instantiation
		 uut: pipeline_5deep_1bit PORT MAP(
					clk => clk,
					rst => rst,
					input => input,
					output => output
		 );
			 
		clk_process :process 
		begin
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
		end process;


  --  Test Bench Statements
     test_pipeline : PROCESS
     BEGIN
	  
	  RST <= '1';
				

      wait for clk_period*3;	
		
		RST <= '0';
	  
		  input <= '1';
		  wait for  clk_period;
		  

		  wait for  clk_period;

		  wait for  clk_period;
		  

		  wait for  clk_period;
		  

		  wait for  clk_period;
		  

		  wait for  clk_period;
			  

        wait; -- will wait forever
     END PROCESS;
  --  End Test Bench 

  END;
