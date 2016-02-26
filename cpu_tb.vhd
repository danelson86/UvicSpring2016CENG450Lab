LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY cpu_tb IS
END cpu_tb;

ARCHITECTURE behavioral OF cpu_tb IS 

   COMPONENT cpu
   PORT( N_FLAG	:	OUT	STD_LOGIC; 
          Z_FLAG	:	OUT	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          --INSTR	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          OUTPUT	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0);
			 EXT_IN	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0);
			 addr     : in  std_logic_vector (6 downto 0)

			 );
   END COMPONENT;

   SIGNAL N_FLAG	:	STD_LOGIC;
   SIGNAL Z_FLAG	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   --SIGNAL INSTR	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL OUTPUT	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL EXT_IN	: STD_LOGIC_VECTOR (15 DOWNTO 0); 
	signal addr : std_logic_vector (6 downto 0);
	
	-- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

   UUT: cpu PORT MAP(
		N_FLAG => N_FLAG, 
		Z_FLAG => Z_FLAG, 
		CLK => CLK, 
		RST => RST, 
		--INSTR => INSTR, 
		OUTPUT => OUTPUT,
		EXT_IN => EXT_IN,
		addr => addr
   );
	
	-- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		
		-- hold reset state for 100 ns.
		RST <= '0';
--		INSTR <= X"0000";
      wait for clk_period*10;	
		wait for clk_period;
		
		--in r0
		EXT_IN <= X"0001";
		ADDR <= "0000010";
		wait for clk_period;	
		
		--in r0
		EXT_IN <= X"0002";
		ADDR <= "0000011";
		wait for clk_period;	
		
		--in r0
		EXT_IN <= X"0003";
		ADDR <= "0000100";
		wait for clk_period;	
		
		EXT_IN <= X"0000";

		for I in 5 to 25 loop
			ADDR <= std_logic_vector(to_unsigned(I,7));
			wait for clk_period;
		end loop;
		
		
--		--IN R0
--		EXT_IN <= X"0000";
--		INSTR <= "0100001000000000";
--		wait for clk_period;	
--		
--		--IN R1
--		EXT_IN <= X"038E";
--		INSTR <= "0100001001000000";
--		wait for clk_period;	
--		
--		--IN R2
--		EXT_IN <= X"0282";
--		INSTR <= "0100001010000000";
--		wait for clk_period;	
--		EXT_IN <= X"0000";
--		
--		--TEST R0
--		INSTR <= "0000111000000000";
--		wait for clk_period;	
--		
--		--TEST R1
--		INSTR <= "0000111001000000";
--		wait for clk_period;	
--		
--		--TEST R2
--		INSTR <= "0000111010000000";
--		wait for clk_period;	
--		
--		--ADD R0 R1 R2
--		INSTR <= "0000001000001010";
--		wait for clk_period;	
--		
--		--SUB R0 R0 R7
--		INSTR <= "0000010000000111";
--		wait for clk_period;	
--		
--		--MUL R7 R5 R6
--		INSTR <= "0000011111101011";
--		wait for clk_period;	
--		
--		--SHL R0 5
--      INSTR <= "0000101000000101";
--		wait for clk_period;	
--		
--		--SHR R0 7
--      INSTR <= "0000110000000111";
--		wait for clk_period;	
--		
--		--NOP
--      INSTR <= X"0000";
--		wait for clk_period;	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
