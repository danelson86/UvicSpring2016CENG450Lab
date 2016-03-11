----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:26:23 03/06/2016 
-- Design Name: 
-- Module Name:    AluControl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AluControl is
	Port(
			  OPCODE : in  STD_LOGIC_VECTOR (6 downto 0):="0000000";
			  add_en : out std_logic := '0';
			  sub_en : out std_logic := '0';
			  mul_en : out std_logic := '0';
			  nand_en : out std_logic := '0';
			  shl_en : out std_logic := '0';
			  shr_en : out std_logic := '0';
			  load_en : out std_logic := '0';
			  loadimm_en : out std_logic := '0';
			  mov_en : out std_logic := '0';
			  in_en :  out std_logic := '0';
			  out_en : out std_logic := '0';
			  store_en :out std_logic := '0'
	
	);
end AluControl;

architecture Behavioral of AluControl is

--A Format instructions
	constant ADD : std_logic_vector (6 downto 0) := "0000001";
	constant SUB : std_logic_vector (6 downto 0) := "0000010";
	constant MUL : std_logic_vector (6 downto 0) := "0000011";
	constant OP_NAND : std_logic_vector (6 downto 0) := "0000100";
	constant SHL : std_logic_vector (6 downto 0) := "0000101";
	constant SHR : std_logic_vector (6 downto 0) := "0000110";
	constant TEST : std_logic_vector (6 downto 0) := "0000111";
	constant OP_OUT : std_logic_vector (6 downto 0) := "0100000";
	constant OP_IN  : std_logic_vector (6 downto 0) := "0100001";
	
	--Format L Instructions
	constant LOAD :  std_logic_vector(6 downto 0):= "0010000";
	constant STORE :  std_logic_vector(6 downto 0):= "0010001";
	constant LOADIMM :  std_logic_vector(6 downto 0):= "0010010";
	constant MOV :  std_logic_vector(6 downto 0):= "0010011";

begin

-------------------------------------------- Set enable bits  --------------------------------------------------------
	store_en 	<= '1' when (OPCODE = STORE) else '0';
	loadimm_en	<= '1' when (OPCODE = LOADIMM) else '0';
	out_en 		<= '1' when (OPCODE = OP_OUT) else '0';
	add_en 		<= '1' when (OPCODE = ADD) else '0';
	sub_en 		<= '1' when (OPCODE = SUB) else '0';
	mul_en 		<= '1' when (OPCODE = MUL) else '0';
	nand_en 		<= '1' when (OPCODE = OP_NAND) else '0';
	shl_en 		<= '1' when (OPCODE = SHL) else '0';
	shr_en 		<= '1' when (OPCODE = SHR) else '0';
	in_en 		<= '1' when (OPCODE = OP_IN) else '0';
	load_en 		<= '1' when (OPCODE = LOAD) else '0';
	mov_en 		<= '1' when (OPCODE = MOV) else '0';

end Behavioral;

