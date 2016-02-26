LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         alu_mode : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         result : OUT  std_logic_vector(15 downto 0);
         z_flag : OUT  std_logic;
         n_flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal in2 : std_logic_vector(15 downto 0) := (others => '0');
   signal alu_mode : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(15 downto 0);
   signal z_flag : std_logic;
   signal n_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          in1 => in1,
          in2 => in2,
          alu_mode => alu_mode,
          clk => clk,
          rst => rst,
          result => result,
          z_flag => z_flag,
          n_flag => n_flag
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

      --Check srl
		alu_mode <= "110";
		in1 <= X"ffff";
		in2 <= X"0004";
		wait for 100 ns;	
		
		--Check sll
		alu_mode <= "111";
		in1 <= X"ffff";
		in2 <= X"0004";
		wait for 100 ns;	
		
		--Check  +
		alu_mode <= "011";
		in1 <= X"ff00";
		in2 <= X"00ff";
		wait for 100 ns;	
		
		--Check  -
		alu_mode <= "100";
		in1 <= X"ffff";
		in2 <= X"ff00";
		wait for 100 ns;	
		
		--Check  nand
		alu_mode <= "101";
		in1 <= "1010101010101010";
		in2 <= "1010101010101010";
		wait for 100 ns;	
		
		--Check mul
		alu_mode <= "010";
		in1 <= "0000000000001111";
		in2 <= "0000000000000011";
		wait for 100 ns;	
		

		

      wait;
   end process;

END;
