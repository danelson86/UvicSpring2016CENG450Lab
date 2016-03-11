-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  

  ENTITY memory_tb IS
  END memory_tb;

  ARCHITECTURE behavior OF memory_tb IS 

  -- Component Declaration
          COMPONENT memory
          PORT(
					CLK : in  STD_LOGIC;
					RST : in  STD_LOGIC;
						
					Data_1 : in	STD_LOGIC_VECTOR (15 downto 0);
					Data_2  : in	STD_LOGIC_VECTOR (15 downto 0);
					WB_ADDR : in STD_LOGIC_VECTOR (2 downto 0);
					wb_en : in std_logic;
					out_en : in std_logic;
					store_en :in std_logic;			
					load_en : in std_logic;
						
					Data_1x : out	STD_LOGIC_VECTOR (15 downto 0);
					WB_ADDRx : out STD_LOGIC_VECTOR (2 downto 0);
					wb_enx : out std_logic;
					out_enx : out std_logic
					);
          END COMPONENT;

					signal CLK : STD_LOGIC;
					signal RST : STD_LOGIC;
					signal Data_1 : 	STD_LOGIC_VECTOR (15 downto 0);
					signal Data_2  : 	STD_LOGIC_VECTOR (15 downto 0);
					signal WB_ADDR :  STD_LOGIC_VECTOR (2 downto 0);
					signal wb_en : std_logic;
					signal out_en : std_logic;
					signal store_en : std_logic;			
					signal load_en : std_logic;
						
					signal Data_1x : 	STD_LOGIC_VECTOR (15 downto 0);
					signal WB_ADDRx :  STD_LOGIC_VECTOR (2 downto 0);
					signal wb_enx :  std_logic;
					signal out_enx : std_logic;

					constant clk_period : time := 20 ns;


  BEGIN

  -- Component Instantiation
          uut: memory PORT MAP(
                  CLK => CLK,
                  RST => RST,
						Data_1 => Data_1,
						Data_2 => Data_2,
						WB_ADDR => WB_ADDR,
						wb_en=> wb_en,
						out_en => out_en,
						store_en => store_en,
						load_en => load_en,
						Data_1x => Data_1x,
						WB_ADDRx =>WB_ADDRx,
						wb_enx => wb_enx,
						out_enx => out_enx						  
          );
			 
		clk_process :process 
		begin
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
		end process;


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 10*clk_period; -- wait until global set/reset completes
		  
			Data_1 <= X"F0F0";
			Data_2 <= X"F0F0";
			store_en <= '1';
			wait for clk_period;
			
			Data_1 <= X"F0F0";
			store_en <= '0';
			wait for clk_period;
			
			Data_1 <= X"F0F0";
			load_en <= '1';
			wait for clk_period;
			
			
			
        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
