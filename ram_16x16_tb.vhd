LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY ram_16x16_ram_16x16_sch_tb IS
END ram_16x16_ram_16x16_sch_tb;
ARCHITECTURE behavioral OF ram_16x16_ram_16x16_sch_tb IS 

   COMPONENT ram_16x16
   PORT( ADDR	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          WE	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          D_IN	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          D_OUT	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL ADDR	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL WE	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL D_IN	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL D_OUT	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	
	-- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

   UUT: ram_16x16 PORT MAP(
		ADDR => ADDR, 
		WE => WE, 
		CLK => CLK, 
		D_IN => D_IN, 
		D_OUT => D_OUT
   );
	
	-- Clock process definitions
   clk_process :process
   begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		
		ADDR <= X"0000";
		D_IN <= X"0000";
		WE <= '0';
		wait for clk_period;
		
		ADDR <= X"0000";
		D_IN <= X"1234";
		WE <= '1';
		wait for clk_period;
		
		ADDR <= X"face";
		D_IN <= X"4321";
		WE <= '1';
		wait for clk_period;
		
		ADDR <= X"0000";
		D_IN <= X"ffff";
		WE <= '0';
		wait for clk_period;
		
		ADDR <= X"face";
		D_IN <= X"ffff";
		WE <= '0';
		wait for clk_period;
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
