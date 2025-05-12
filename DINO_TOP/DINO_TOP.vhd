--Melisa Saucedo A01748077, Leonardo Madrid A01747964
--TOP LEVEL DESIGN DEL VGA QUE MUESTRA UNA CRUZ

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity DINO_TOP is
	port(CLK, RST, START	: in std_logic;
		  ENA					: in std_logic;
		  PUSHB				: IN STD_LOGIC;
		  VSYNC				: out std_logic;
		  HSYNC				: out std_logic;
		  R					: out std_logic_vector(3 downto 0);
		  G					: out std_logic_vector(3 downto 0);
		  B					: out std_logic_vector(3 downto 0);
		  boom 				: out std_logic);
end entity;
 
Architecture ARC of DINO_TOP is

	--COMPONENTES
	component DIVISOR_FREC is
		port(clk, rst : in std_logic;
			  frec 	  : out std_logic);
	end component;
	
	COMPONENT CONT_H800 is 
		PORT(CLK, RESET : IN STD_LOGIC;
			ENA        : OUT STD_LOGIC; 
			HSYNC      : OUT STD_LOGIC;
			COUNT      : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT CONT_V525 IS
	PORT(CLK, RESET : IN STD_LOGIC;
			ENA        : IN STD_LOGIC; 
			VSYNC      : OUT STD_LOGIC;
			COUNT      : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
	
	component MQEDO_VSYNC is
		port(CLK, RST, START	: in std_logic;
		  cont				: in std_logic_vector(9 downto 0);
		  VSYNC				: out std_logic);
	end component;
	
	component MQEDO_HSYNC is
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
	end component;
	
	component SEQ_DINO is
		port( push	: in std_logic;
				VSYNC	: in std_logic;
				limUP : out std_logic_vector(9 downto 0); --posicion en y
				limDO : out std_logic_vector(9 downto 0)); --posicion en y
	end component;
	
	component SEQ_OBST is
		port( ENA		: in std_logic;
				VSYNC		: in std_logic;
			   --limUP		: in std_logic_vector(9 downto 0); 
			   limDO		: in std_logic_vector(9 downto 0);
				limIZQ 	: out std_logic_vector(9 downto 0); --posicion en x
				limDER	: out std_logic_vector(9 downto 0); --posicion en x
			   boom		: out std_logic); --señal si game over o no
	end component;
	
	--SEÑALES
	signal frecc : std_logic;
	signal count800 : std_logic_vector(9 downto 0);
	signal flag : std_logic; --la señal que avisa que ya contó hasta 800 (799)
	signal count525 : std_logic_vector(9 downto 0);
	signal vsyncc : std_logic;
	signal LIMU	:	STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal LIMO	:	STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal LIMIZQ	:	STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal LIMDER	:	STD_LOGIC_VECTOR(9 DOWNTO 0);


begin
	
	I1	: DIVISOR_FREC port map (CLK, RST, frecc);
	I2	: CONT_H800 port map (frecc , RST, flag, HSYNC, count800);
	I3 : CONT_V525 port map (frecc, RST, flag, VSYNC, count525);
	I4 : MQEDO_VSYNC port map (frecc, RST, START, count525, vsyncc);
	I5	: SEQ_DINO PORT MAP(PUSHB, vsyncc, LIMU(9 DOWNTO 0), LIMO(9 DOWNTO 0));
	I6 : SEQ_OBST port map (ENA, vsyncc, LIMO, LIMIZQ(9 downto 0), LIMDER(9 downto 0), boom);
	I7 : MQEDO_HSYNC port map (frecc, RST, START, count525, count800, LIMU(9 DOWNTO 0), LIMO(9 DOWNTO 0), LIMIZQ(9 DOWNTO 0), LIMDER(9 DOWNTO 0), vsyncc, R, G, B);
	
end architecture;
	