--Melisa Saucedo A01748077, Leonardo Madrid A01747964
--UN CONTADOR CON SECUENCIA PARA EL SALTO DEL DINOSAURIO
--DINO ES DE 40 ANCHO X 44 ALTO PXLS

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity SEQ_DINO is
	port(push	: in std_logic;
		  VSYNC	: in std_logic;
		  limUP : out std_logic_vector(9 downto 0); --posicion en y
		  limDO : out std_logic_vector(9 downto 0)); --posicion en y
		  --flag1	:	out	std_logic;
		  --cont1	:	out	std_logic_vector(6 downto 0));
end entity;


Architecture ARC of SEQ_DINO is 
	
	signal posUP : std_logic_vector(9 downto 0);
	signal posDO : std_logic_vector(9 downto 0);
	signal flag : std_logic;
	signal cont	:	std_logic_vector(6 downto 0);

begin

	P1 : process(push)
	begin
	
		if(VSYNC'event and VSYNC = '1') then
			
			if(push='0' and cont < 1) then
				flag <= '1';
				posUP <= posUP - 1; --restar es subir
				posDO <= posDO - 1;
				cont <= cont + 1;
				
			elsif(flag = '1' and cont < 80) then --SUBE 80 PXLS, saltode36
				posUP <= posUP - 1;
				posDO <= posDO - 1;
				cont <= cont + 1;
				
			elsif(flag = '1' and cont > 79) then --si ya esta mayor que 80, envia la SEÑAL DE BAJAR
				flag <= '0';
				
			elsif(flag = '0' and cont > 0) then --señal bajar, como esta en 80, empieza a RESTAR CONT
				posUP <= posUP + 1; 
				posDO <= posDO + 1;
				cont <= cont - 1;

			elsif(flag='0' and cont< 1) then 
				posUP <= "0110101110"; --430
				posDO <= posUP + 44; 
				cont <=	"0000000";
				
			end if;
		end if;
		
	end process;
	--flag1	<=	flag;
	--cont1 <=	cont;
	limUP <= posUP;
	limDO <= posDO;
	
end architecture;	
	
	