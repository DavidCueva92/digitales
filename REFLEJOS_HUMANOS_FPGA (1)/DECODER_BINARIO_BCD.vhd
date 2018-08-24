Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DECODER_BINARIO_BCD is
	Port(	Dat_binario: In Std_logic_vector(3 downto 0);
			Decenas, Unidades: Out Std_logic_vector(3 downto 0));
End DECODER_BINARIO_BCD;

Architecture comportamiento of DECODER_BINARIO_BCD is
	Begin
		Process(Dat_binario)
		Begin
			Case Dat_binario is
				when "0000" => Decenas<="0000"; Unidades<="0000";
				when "0001" => Decenas<="0000"; Unidades<="0001";
				when "0010" => Decenas<="0000"; Unidades<="0010";
				when "0011" => Decenas<="0000"; Unidades<="0011";
				when "0100" => Decenas<="0000"; Unidades<="0100";
				when "0101" => Decenas<="0000"; Unidades<="0101";
				when "0110" => Decenas<="0000"; Unidades<="0110";
				when "0111" => Decenas<="0000"; Unidades<="0111";
				when "1000" => Decenas<="0000"; Unidades<="1000";
				when "1001" => Decenas<="0000"; Unidades<="1001";
				when "1010" => Decenas<="0001"; Unidades<="0000";
				when "1011" => Decenas<="0001"; Unidades<="0001";
				when "1100" => Decenas<="0001"; Unidades<="0010";
				when "1101" => Decenas<="0001"; Unidades<="0011";
				when "1110" => Decenas<="0001"; Unidades<="0100";
				when "1111" => Decenas<="0001"; Unidades<="0101";
			End case;
		End process;
End comportamiento;