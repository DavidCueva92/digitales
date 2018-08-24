Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all; 

Entity PROMEDIO is
	Port(	Suma_Xn: In std_logic_vector(7 downto 0);
			n: In std_logic_vector(3 downto 0);
			En: In std_logic;
			Media: Out Std_logic_vector(3 downto 0));
End PROMEDIO;

Architecture comportamiento of PROMEDIO is
signal Sumatoria: INTEGER RANGE 0 TO 225;
signal Num_muestras, Media_aritmetica: INTEGER RANGE 0 TO 15;
Begin
	Process(En)
	begin
		if((En = '1') and not(n="0000"))then
			Sumatoria <= CONV_INTEGER(Suma_Xn);
			Num_muestras <= CONV_INTEGER(n);
			Media_aritmetica <= Sumatoria/Num_muestras;
			Media <= CONV_STD_LOGIC_VECTOR(Media_aritmetica,4);
		else
			Media <= "0000";
		end if;
	end process;
End comportamiento;