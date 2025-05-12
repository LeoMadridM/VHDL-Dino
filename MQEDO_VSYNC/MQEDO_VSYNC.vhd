--Melisa Saucedo Sánchez A01748077
--MAQUINA DE ESTADOS PARA LA SINCRONIA VERTICAL DEL VGA

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity MQEDO_VSYNC is
	port(CLK, RST, START	: in std_logic;
		  cont				: in std_logic_vector(9 downto 0);
		  VSYNC				: out std_logic);
		  --VSYNC_TOP			: out std_logic);
end entity;

Architecture ARC of MQEDO_VSYNC is
	
	type ESTADOS is (IDLE, E1, E2, E3, E4); --estados
	signal EDO, EDO_F : ESTADOS; --EDO (presente), EDO_F (futuro)

begin 

	--CONTROL DE TRANSICION DE FLIP-FLOPS (FFD)
	P1FFD : process (CLK, RST, START)
	begin
		if RST = '0' then --RST asíncrono en bajo
			EDO <= IDLE;
		elsif (CLK'event and CLK = '1') then
			if (START = '1') then
				EDO <= EDO_F;
			end if;
		end if;
	end process;
	
	--PROCESO DE TRANSICIONES
	P2TRANSC : process (EDO, cont)
	begin 
		case EDO is
			when idle => if START='0' then
								EDO_F <= idle;
							else 
								EDO_F <= E1;
							end if;
							
			when E1 => if (cont = "0000000001") then --2(need 2lines) /1(cont)
								EDO_F <= E2;
							else
								EDO_F <= E1; --pulso
							end if;
							
			when E2 => if (cont = "0000100010") then --33/34
								EDO_F <= E3;
							else 
								EDO_F <= E2;
							end if;
								
			when E3 => if (cont = "1000000010") then --480/514
								EDO_F <= E4;
							else
								EDO_F <= E3;
							end if;
								
			when E4 => if (cont = "1000001100") then --10/524
								EDO_F <= idle;
							else
								EDO_F <= E4;
							end if;
							
		end case;
	end process;
	
	--SALIDAS
	P3SALIDAS : process (EDO)
	begin
		case EDO is
			when IDLE => VSYNC <= '0'; 
						    --VSYNC_TOP <= '0';
			
			when E1 => VSYNC <= '0'; --pulso
						  --VSYNC_TOP <= '0';
			
			when E2 => VSYNC <= '1';
						  --VSYNC_TOP <= '1';
			
			When E3 => VSYNC <= '1';
						  --VSYNC_TOP <= '1';
			
			when E4 => VSYNC <= '1';
						  --VSYNC_TOP <= '1';
						  
			when others => null;
			
		end case;
	end process;

	
end architecture; 

	