LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         CLK : in STD_LOGIC;
			RST : in STD_LOGIC; 
			
			in1 : in 	STD_LOGIC_VECTOR (15 downto 0);
			in2  : in 	STD_LOGIC_VECTOR (15 downto 0);

			WB_ADDR : in STD_LOGIC_VECTOR (2 downto 0);
			add_en : in std_logic;
			sub_en : in std_logic;
			mul_en : in std_logic;
			nand_en : in std_logic;
			shl_en : in std_logic;
			shr_en : in std_logic;
			load_en : in std_logic;
			loadimm_en : in std_logic;
			mov_en : in std_logic;
			in_en :  in std_logic;
			out_en : in std_logic;
			store_en :in std_logic;
			
			
			Data_1 : out	STD_LOGIC_VECTOR (15 downto 0);
			Data_2  : out	STD_LOGIC_VECTOR (15 downto 0);
			WB_ADDRx : out STD_LOGIC_VECTOR (2 downto 0);
			wb_enx : out std_logic;
			out_enx : out std_logic;
			store_enx :out std_logic;			
			load_enx : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal in2 : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
	
	signal WB_ADDR :  STD_LOGIC_VECTOR (2 downto 0);
	signal add_en :  std_logic;
	signal sub_en :  std_logic;
	signal mul_en :  std_logic;
	signal nand_en :  std_logic;
	signal shl_en :  std_logic;
	signal shr_en :  std_logic;
	signal load_en : std_logic;
	signal loadimm_en :  std_logic;
	signal mov_en :  std_logic;
	signal in_en :   std_logic;
	signal out_en : std_logic;
	signal store_en : std_logic;
	
	signal Data_1 : 	STD_LOGIC_VECTOR (15 downto 0);
	signal Data_2  : 	STD_LOGIC_VECTOR (15 downto 0);
	signal WB_ADDRx : STD_LOGIC_VECTOR (2 downto 0);
	signal wb_enx :  std_logic;
	signal out_enx :  std_logic;
	signal store_enx : std_logic;			
	signal load_enx :  std_logic;
	
	

 	--Outputs

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          in1 => in1,
          in2 => in2,
          clk => clk,
          rst => rst,
			 WB_ADDR => WB_ADDR,
			 add_en => add_en,
			 sub_en => sub_en,
			 mul_en => mul_en,
			 nand_en => nand_en,
			 shl_en => shl_en,
			 shr_en => shr_en,
			 load_en => load_en,
			 loadimm_en => loadimm_en,
			 mov_en => mov_en,
			 in_en => in_en,
			 out_en => out_en,
			 store_en => store_en,
			 data_1 => data_1,
			 data_2 => data_2,
			 wb_addrx => wb_addrx,
			 wb_enx => wb_enx,
			 out_enx => out_enx,
			 store_enx => store_enx,
			 load_enx => load_enx
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


		
		--Check  +
		add_en <= '1';
		in1 <= X"ff00";
		in2 <= X"00ff";
		wait for clk_period;	
		
		--Check  -
		add_en <= '0';
		sub_en <= '1';
		in1 <= X"ffff";
		in2 <= X"ff00";
		wait for clk_period;	
		
		--Check mul
		sub_en <= '0';
		mul_en <= '1';
		in1 <= "0000000000001111";
		in2 <= "0000000000000011";
		wait for clk_period;	
		
		--Check  nand
		mul_en <= '0';
		nand_en <= '1';
		in1 <= "1010101010101010";
		in2 <= "1010101010101010";
		wait for clk_period ;	
		
		--Check srl
		nand_en <= '0'; 
		shr_en  <= '1';
		in1 <= X"ffff";
		in2 <= X"0004";
		wait for clk_period ;	
		
		--Check sll
		shr_en  <= '0';
		shl_en <= '1';
		in1 <= X"ffff";
		in2 <= X"0004";
		wait for clk_period ;	
		
		shl_en <= '0';
		store_en <= '1';
		wait for  clk_period;
				
      wait;
   end process;

END;
