library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;
----------------------------------------
PACKAGE Mis_componentes IS
----------------------------------------

Component CONTADOR_UP is
Port(	Data:				In std_logic_vector(3 downto 0);
		En, Ld:			In std_logic;
		Reset, clock: 	In std_logic;
		Q:					Buffer std_logic_vector(3 downto 0)	);
End Component; 

----------------------------------------

Component REG_SOST is
Port(	Ent:					In Std_logic_vector(3 downto 0);
		En, Reset, clock:	In Std_logic;
		Q:						Out Std_logic_vector(3 downto 0)	);
End Component;

----------------------------------------

Component DEMUX_1TO16 is
	Port(	Ent:	In Std_logic;
			Sel:	In Std_logic_vector(3 downto 0);
			Sal0, Sal1, Sal2, Sal3, Sal4, Sal5, Sal6, Sal7, Sal8, Sal9, Sal10, Sal11, Sal12, Sal13, Sal14, Sal15:		Out Std_logic);
End Component;

----------------------------------------

Component RAM_LED IS
PORT(	address	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END Component;

----------------------------------------

Component SUMADOR_RETROALIMENTADO is
Port(	Dato:				In std_logic_vector(3 downto 0);
		En, Ld:			In std_logic;
		Reset, clock: 	In std_logic;
		Suma:				Buffer std_logic_vector(7 downto 0)	);
End Component;

----------------------------------------

Component DECODER_DECIMAL_BINARIO is
Port(	Dat_decimal: In std_logic_vector(14 downto 0);
		Dat_binario: Out std_logic_vector(3 downto 0));
End Component;

----------------------------------------

Component DECODER_BINARIO_BCD is
Port(	Dat_binario: 			In Std_logic_vector(3 downto 0);
		Decenas, Unidades: 	Out Std_logic_vector(3 downto 0));
End Component; 

----------------------------------------

Component COMPARADOR is
Port(	A, B: 							In std_logic_vector(3 downto 0);
		AmayorB, AigualB, AmenorB: Out std_logic);
End Component;

----------------------------------------

Component DECODER_7SEG is
Port (	bcd	: 	in std_logic_vector(3 downto 0);
			apaga: 	in std_logic;
			seg7	: 	out std_logic_vector(6 downto 0));
End Component;

-----------------------------------------

Component PROMEDIO is
Port(	Suma_Xn: In std_logic_vector(7 downto 0);
		n: 		In std_logic_vector(3 downto 0);
		En: 		In std_logic;
		Media: 	Out Std_logic_vector(3 downto 0));
End Component;

-----------------------------------------

Component ANTIREBOTE IS
Port( PB_N, CLOCK_100Hz 	: IN	STD_LOGIC;
	   PB_SIN_REBOTE			: OUT	STD_LOGIC);
END Component;

-----------------------------------------

Component CLOCK_DIV IS
PORT(  CLOCK_50MHz    :IN   STD_LOGIC;
       CLOCK_1MHz     :OUT  STD_LOGIC;
       CLOCK_100KHz   :OUT  STD_LOGIC;
       CLOCK_10KHz    :OUT  STD_LOGIC;
       CLOCK_1KHz     :OUT  STD_LOGIC;
       CLOCK_100Hz    :OUT  STD_LOGIC;
       CLOCK_10Hz     :OUT  STD_LOGIC;
       CLOCK_1Hz      :OUT  STD_LOGIC);
END Component;

-----------------------------------------

End Mis_componentes;