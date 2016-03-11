-- Vhdl test bench created from schematic C:\Users\David\Documents\UVic\Spring 2016\CENG 450\Project\UvicSpring2016CENG450Lab-master\UvicSpring2016CENG450Lab-master\cpu.sch - Sun Feb 28 02:16:40 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY cpu_sch_tb IS
END cpu_sch_tb;
ARCHITECTURE behavioral OF cpu_sch_tb IS 

   COMPONENT cpu
   PORT(  
			 INSTR :	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0);
			 CLK	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC;  
			 Extern_Data	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          OUTPUT	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0)
	
);
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL Extern_Data	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL OUTPUT	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL INSTR :	STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal WriteBack_Data	:		STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal WB_addr	:		STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal CTRL_DATA1	:		STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal CTRL_DATA2	:		STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal CTRL_WB_ADDR :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal ALU_WB_ADDR :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal MEM_WB_ADDR : STD_LOGIC_VECTOR (2 DOWNTO 0);




		-- Clock period definitions
   constant clk_period : time := 20 ns;

BEGIN

   UUT: cpu PORT MAP(
		CLK => CLK, 
		RST => RST, 
		Extern_Data => Extern_Data,  
		OUTPUT => OUTPUT,
		INSTR => INSTR
--		CTRL_DATA1 => CTRL_DATA1,
--		CTRL_DATA2 =>CTRL_DATA2,
--		WB_Addr => WB_ADDR,
--		WriteBack_Data => WriteBack_Data,
--		CTRL_WB_ADDR =>CTRL_WB_ADDR,
--		ALU_WB_ADDR => ALU_WB_ADDR,
--		MEM_WB_ADDR => MEM_WB_ADDR
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
		RST <= '1';
				

      wait for clk_period*3;	
		
		RST <= '0';
		
		
--	INSTR <= "0000000000000000";
--	wait for clk_period;	
--
--   INSTR <= "0000000000000000";
--	wait for clk_period;	
--	Extern_Data <= X"0001";
--	INSTR <= "0100001001000000";	
--
--
--	wait for clk_period;		-- IN r1
--	Extern_Data <= X"0002";
--	INSTR <= "0100001010000000";
--	wait for clk_period;	  -- IN r2
--	Extern_Data <= X"0003";
--	INSTR <= "0100001011000000";
--	wait for clk_period;	
--	
--	INSTR <= "0000000000000000";  -- IN r3	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000001011010001";  -- ADD r3, r2, r1
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000101011000010";  -- SHL r3, 2
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	
--	wait for clk_period;	
--	INSTR <= "0000011010001011";  -- MUL r2, r1, r3
--	
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	wait for clk_period;	
--	INSTR <= "0000000000000000";  -- NOP
--	wait for clk_period;	
--	INSTR <= "0100000010000000";  -- OUT r2	
--	INSTR <= "0000000000000000"; -- NOP
		
		wait for clk_period*3;	
 
		--in r0
		Extern_Data <= X"0001";
--		ADDR <= "0000010";
		wait for clk_period;	
		
		Extern_Data <= X"0000";
--		ADDR <= "0000010";
		wait for clk_period;	
		
		Extern_Data <= X"0002";
--		ADDR <= "0000010";
		wait for clk_period;	
		
		Extern_Data <= X"0000";
--		ADDR <= "0000010";
		wait for clk_period;	
		
		--in r0 
		Extern_Data <= X"0003";
--		ADDR <= "0000011";
		wait for clk_period;	
		
		Extern_Data <= X"0000";
--		ADDR <= "0000010";
		wait for clk_period;	
		
		--in r0
		Extern_Data <= X"0003";
--		ADDR <= "0000100";
		wait for clk_period;	 
		

 
		for I in 5 to 100 loop
		wait for clk_period;
		end loop;
		
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
