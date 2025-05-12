--Melisa Saucedo Sánchez A01748077
--MAQUINA DE ESTADOS PARA LA SINCRONIA HORIZONTAL DEL VGA

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity MQEDO_HSYNC is
	port(CLK, RST, START	: in std_logic;
		  cont525			: in std_logic_vector(9 downto 0);
		  cont800			: in std_logic_vector(9 downto 0);
		  LIMUP  			: in std_logic_vector(9 downto 0);
		  LIMDO			   : in std_logic_vector(9 downto 0);
		  LIMIZQ				: in std_logic_vector(9 downto 0);
		  LIMDER				: in std_logic_vector(9 downto 0);
		  VSYNC				: in std_logic;
		  R					: out std_logic_vector(3 downto 0);
		  G					: out std_logic_vector(3 downto 0);
		  B					: out std_logic_vector(3 downto 0));
		  --HSYNC				: out std_logic);
end entity;

Architecture ARC of MQEDO_HSYNC is
			
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
	P2TRANSC : process (EDO, cont800)
	begin 
		case EDO is
			when idle => if START='0' then
								EDO_F <= idle;
							else 
								EDO_F <= E1;
							end if;
							
			when E1 => if (cont800 = "0001011111") then --96(need 96lines) /95(cont)
								EDO_F <= E2;
							else
								EDO_F <= E1; --pulso
							end if;
							
			when E2 => if (cont800 = "0010001111") then --48/143
								EDO_F <= E3;
							else 
								EDO_F <= E2;
							end if;
								
			when E3 => if (cont800 = "1100001111") then --640/783
								EDO_F <= E4;
							else
								EDO_F <= E3;
							end if;
								
			when E4 => if (cont800 = "1100011111") then --16/799
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
			when IDLE => 	R <= "0000";
								G <= "0000";
								B <= "0000"; 
								--HSYNC <= '0';
								
			when E1 => 		R <= "0000"; --pulso
								G <= "0000";
								B <= "0000"; 
								--HSYNC <= '0';
								
			when E2 => 		R <= "0000"; --back porch
								G <= "0000";
								B <= "0000"; 
								--HSYNC <= '1';				
								
								
			when E3 => 		if (VSYNC='1') then --zona visible
									R <= "0000"; 
									G <= "1111";
									B <= "1111"; 
		
									if ((cont525> LIMUP and cont525< LIMDO) and (cont800> 200 and cont800< 240)) then
										R <= "1111"; 
										G <= "1111";
										B <= "1111";
									end if;
									
									if ((cont525< 475 and cont525> 441) and (cont800>LIMIZQ and cont800<LIMDER)) then
										R <= "1111"; 
										G <= "1111";
										B <= "1111";
									end if;
									
									
									if (cont525>"0111011011" and cont525<"0111100000") then
										R <= "1111"; 
										G <= "1111";
										B <= "1111";
									end if;
									
	
								end if;
								
								--HSYNC <= '1';
								
			when E4 => 		R <= "0000"; --front porch
								G <= "0000";
								B <= "0000"; 
								--HSYNC <= '1';
								
			when others => null;
								
		end case;
	end process;
	
	
end architecture;
