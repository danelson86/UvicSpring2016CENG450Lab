LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY busmux_16bit_tb IS
END busmux_16bit_tb;
 
ARCHITECTURE behavior OF busmux_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT busmux_16bit
    PORT(
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         sel : IN  std_logic;
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal in2 : std_logic_vector(15 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: busmux_16bit PORT MAP (
          in1 => in1,
          in2 => in2,
          sel => sel,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		in1 <= "0101010101010101";
		in2 <= "1010101010101010";
		sel <= '0';
		wait for 100 ns;	
		sel <= '1';
		wait for 100 ns;	


      wait;
   end process;

END;
