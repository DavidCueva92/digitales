Library IEEE;
Use IEEE.std_logic_1164.all;

Entity REG_SOST is
	Port(	Ent	:				In Std_logic_vector(3 downto 0);
			En, Reset, clock:	In Std_logic;
			Q:					Out Std_logic_vector(3 downto 0)	);
End REG_SOST;

Architecture comportamiento of REG_SOST is
	Begin
		Process(Reset, clock)
			Begin
				If Reset='1' then Q <= "0000";
				elsif (clock'event and clock='1') then
					If En='1' then Q <= Ent; end if;
				end if;
		End process;
End comportamiento;