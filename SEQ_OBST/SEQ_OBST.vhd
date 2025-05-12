--Melisa Saucedo A01748077, Leonardo Madrid A01747964
--UN CONTADOR CON SECUENCIA PARA EL MOV. LATERAL DEL OBSTACULO
--NOPAL ES DE 24 ANCHO X 34 ALTO PXLS

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity SEQ_OBST is
	port( ENA		: in std_logic;
			VSYNC		: in std_logic;
			--limUP		: in std_logic_vector(9 downto 0); 
			limDO		: in std_logic_vector(9 downto 0);
			limIZQ 	: out std_logic_vector(9 downto 0); --posicion en x
			limDER	: out std_logic_vector(9 downto 0); --posicion en x
			boom		: out std_logic); --señal si game over o no
end entity;


Architecture ARC of SEQ_OBST is

	signal posIZQ : std_logic_vector(9 downto 0);
	signal posDER : std_logic_vector(9 downto 0);
	signal flag : std_logic;
	signal cont	:	std_logic_vector(9 downto 0);
	signal gameOV : std_logic;

begin

	P1 : process(ENA)
	begin
			
		if(VSYNC'event and VSYNC = '1') then 
		
			if (ENA='1' and cont < 1) then -- "inicializa" / cont=0
				flag <= '1'; --flag avanza
				posIZQ <= posIZQ - 1; --restar es izq
				posDER <= posDER - 1;
				cont <= cont + 1;	
				
			elsif(flag='1' and cont < 640) then	--POSC A IZQ 657 PXLS
				posIZQ <= posIZQ - 1; 
				posDER <= posDER - 1;
				cont <= cont + 1;	
				
			elsif(flag = '1' and cont > 639) then --si ya esta en 657, envia la SEÑAL DE REGRESO
				flag <= '0';
				
			elsif(flag='0' and cont > 0) then 
				posIZQ <= posIZQ - 1; 
				posDER <= posDER - 1;
				cont <= cont - 1;
				
			elsif(flag='0' and cont< 1) then --POSC INICIAL
				posIZQ <= "1011110111"; --759
				posDER <= posIZQ + 24; 
				cont <=	"0000000000";
				
			elsif ((posIZQ<= 224 and posIZQ>=176) and (limDO<= 474 and limDO >=440)) then
				gameOV <= '1';
				
			
			end if;
		end if;
		
	end process;
	
	limIZQ <= posIZQ;
	limDER <= posDER;
	boom <= gameOV;
	
end architecture;	
			

		
		
		