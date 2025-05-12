--Melisa Saucedo Sánchez A01748077
--DIVISOR DE FRECUENCIA, DEL RELOJ DE 50MHZ LO DIVIDIMOS A 25MHZ PARA EL VGA CRUZ

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity DIVISOR_FREC is
	port(clk, rst : in std_logic;
			frec 	  : out std_logic);
end entity;

Architecture ARC of DIVISOR_FREC is

	signal Q, D : std_logic; --Q estado presente, D estado futuro
	
begin


	P1 : process (clk, rst) is
	begin
		if (rst ='0') then
			Q <= '0';
			
		elsif (clk'event and clk='1') then
			Q <= D;
			
		end if;
	end process;
	
	D <= not(Q);
	frec <= Q;
	
end architecture;