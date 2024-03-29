LIBRARY ieee;

USE ieee.std_logic_1164.all;
 
ENTITY my_movimentation IS
	PORT( 
		SF, SD, SE: IN STD_LOGIC; 
		FRENTE, DIREITA, ESQUERDA, SAIDA: OUT STD_LOGIC
		);

END my_movimentation;
 
ARCHITECTURE behavior OF my_movimentation IS
 
	BEGIN 
		FRENTE <= (((SD AND SE) AND (NOT SF)) OR ((SE NOR SF) AND SD) OR ((SF NOR SD) AND SE));
		DIREITA <= (((SF AND (NOT SD))AND SE) OR (SF AND SD AND SE) OR ((SD NOR SE) AND SF));
		ESQUERDA <= ((SF AND SD) AND (NOT SE));
		SAIDA <= (NOT((SF OR SD) OR SE));

END behavior;

-- modification needed to change code to manchine state
-- design circuit vhdl - tocci

