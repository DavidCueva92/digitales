Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity SUMADOR_RETROALIMENTADO is
	Port(	Dato:			In std_logic_vector(3 downto 0);
			En, Ld:			In std_logic;
			Reset, clock: 	In std_logic;
			Suma:				Buffer std_logic_vector(7 downto 0)	);
End SUMADOR_RETROALIMENTADO;

Architecture comportamiento of SUMADOR_RETROALIMENTADO is
	Begin
		Process(Reset, clock)
			Begin
				If Reset='1' then Suma <= "00000000";
				elsif clock'event and clock='1' then
					if En='1' then
						if Ld='1' then Suma <= "0000"&Dato;
						else Suma <= Suma+Dato; end if;
					end if;
				end if;
		End process;
End comportamiento;