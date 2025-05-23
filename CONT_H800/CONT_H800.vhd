--Melisa Saucedo Sánchez A01748077
--CONTADOR DE 10 BITS PARA CONTAR HASTA 800 DE LA HORIZONTAL DEL VGA 

----	CONTADOR A 799

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CONT_H800 IS
	PORT(CLK, RESET : IN STD_LOGIC;
			ENA        : OUT STD_LOGIC; 
			HSYNC      : OUT STD_LOGIC;
			COUNT      : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END ENTITY;

ARCHITECTURE ARC OF CONT_H800 IS

	SIGNAL C1    : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL E, HS : STD_LOGIC;

 BEGIN	
	
	PR1 : PROCESS(CLK,RESET)
	
	BEGIN
		
		IF(RESET = '0') THEN
			C1 <= (OTHERS => '0');
		ELSIF (CLK'EVENT and CLK = '1') THEN
			IF C1 = "1100011111" THEN
				C1 <= (OTHERS => '0');
				E  <= '1';
			ELSE
				C1 <= C1 + 1;
				E  <= '0';
		   END IF;
		END IF;
	END PROCESS;
	
	COUNT <= C1;	
	ENA   <= E;
	
	PR2: PROCESS (C1)
	BEGIN
		IF (C1 > "0001011111") THEN
			HS <= '1';
		ELSE 
			HS <= '0';
		END IF;
	END PROCESS;
	
	HSYNC <= HS;	
		
END ARCHITECTURE;