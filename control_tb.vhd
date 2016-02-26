LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY control_tb IS
END control_tb;
 
ARCHITECTURE behavior OF control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control
    PORT(
         INSTR : IN  std_logic_vector(15 downto 0);
         CLK : IN  std_logic;
         RST : IN  std_logic;
         RegRead1 : OUT  std_logic_vector(2 downto 0);
         RegRead2 : OUT  std_logic_vector(2 downto 0);
         RegWrite : OUT  std_logic_vector(2 downto 0);
         RegWriteEn : OUT  std_logic;
         ALUMode : OUT  std_logic_vector(2 downto 0);
         ImmData : OUT  std_logic_vector(15 downto 0);
         RegRead2FromImm : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal INSTR : std_logic_vector(15 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal RegRead1 : std_logic_vector(2 downto 0);
   signal RegRead2 : std_logic_vector(2 downto 0);
   signal RegWrite : std_logic_vector(2 downto 0);
   signal RegWriteEn : std_logic;
   signal ALUMode : std_logic_vector(2 downto 0);
   signal ImmData : std_logic_vector(15 downto 0);
   signal RegRead2FromImm : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
          INSTR => INSTR,
          CLK => CLK,
          RST => RST,
          RegRead1 => RegRead1,
          RegRead2 => RegRead2,
          RegWrite => RegWrite,
          RegWriteEn => RegWriteEn,
          ALUMode => ALUMode,
          ImmData => ImmData,
          RegRead2FromImm => RegRead2FromImm
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
		RST <= '0';

		--SHR R0 3
      INSTR <= "0000101000000011";
		wait for 100 ns;	

      wait;
   end process;

END;
