LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY topleveltb IS
END topleveltb;
ARCHITECTURE behavioral OF topleveltb IS

   COMPONENT top_level_v1
   PORT( NCLR	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC );
   END COMPONENT;

   SIGNAL CLR	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL CE	:	STD_LOGIC;

BEGIN

   UUT: top_level_v1 PORT MAP(
		NCLR => CLR, 
		CLK => CLK 
   );
	
   --CLOCK
   clock : PROCESS
   BEGIN
		CLK <= '0';
		WAIT FOR 125 ns;
		CLK <= '1';
		WAIT FOR 125 ns;	
   END PROCESS;	
	
   -- RESET
   reset : PROCESS
   BEGIN
		CLR <= '0';
		WAIT FOR 500 ns;
		CLR <= '1';
		WAIT;	
   END PROCESS;

   -- TESTBENCH
   tb : PROCESS
   BEGIN
		CE <= '1';
      WAIT; -- will wait forever
   END PROCESS;


END;
