-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Sat Jan 13 23:42:26 2024
-- Host        : DESKTOP-5GQMOJK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/Anul III - Semestrul
--               I/SSC/PROIECT/FPU_DIVIDER/Impartire_in_virgula_mobila/Impartire_in_virgula_mobila.sim/sim_1/synth/func/FPU_Division_Sim_func_synth.vhd}
-- Design      : Control_Unit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter is
  port (
    intermediar : out STD_LOGIC;
    \cat[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cat[1]_0\ : out STD_LOGIC;
    Q3_reg : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    count_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_int_reg[15]\ : in STD_LOGIC;
    sw_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    intermediar_reg_0 : in STD_LOGIC;
    intermediar_reg_1 : in STD_LOGIC;
    intermediar_reg_2 : in STD_LOGIC
  );
end Counter;

architecture STRUCTURE of Counter is
  signal digits : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^intermediar\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cat_OBUF[6]_inst_i_11\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cat_OBUF[6]_inst_i_8\ : label is "soft_lutpair35";
begin
  intermediar <= \^intermediar\;
\cat_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => \^intermediar\,
      I1 => sw_IBUF(0),
      I2 => intermediar_reg_0,
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(2),
      O => digits(0)
    );
\cat_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55CC55F0"
    )
        port map (
      I0 => \^intermediar\,
      I1 => intermediar_reg_1,
      I2 => intermediar_reg_2,
      I3 => sw_IBUF(0),
      I4 => sw_IBUF(1),
      O => digits(8)
    );
\cat_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => digits(0),
      I1 => count_reg(1),
      I2 => digits(8),
      I3 => count_reg(0),
      I4 => \count_int_reg[15]\,
      O => \cat[1]\(0)
    );
\cat_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^intermediar\,
      I1 => sw_IBUF(0),
      I2 => intermediar_reg_1,
      I3 => sw_IBUF(1),
      O => \cat[1]_0\
    );
intermediar_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q3_reg,
      Q => \^intermediar\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_0 is
  port (
    intermediar_reg_0 : out STD_LOGIC;
    digits : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q3_reg : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    intermediar : in STD_LOGIC;
    intermediar_reg_1 : in STD_LOGIC;
    sw_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_0 : entity is "Counter";
end Counter_0;

architecture STRUCTURE of Counter_0 is
  signal \^intermediar_reg_0\ : STD_LOGIC;
begin
  intermediar_reg_0 <= \^intermediar_reg_0\;
\cat_OBUF[6]_inst_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAACCF0"
    )
        port map (
      I0 => \^intermediar_reg_0\,
      I1 => intermediar,
      I2 => intermediar_reg_1,
      I3 => sw_IBUF(0),
      I4 => sw_IBUF(1),
      O => digits(0)
    );
intermediar_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q3_reg,
      Q => \^intermediar_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_1 is
  port (
    intermediar_reg_0 : out STD_LOGIC;
    Q3_reg : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_1 : entity is "Counter";
end Counter_1;

architecture STRUCTURE of Counter_1 is
begin
intermediar_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q3_reg,
      Q => intermediar_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Divider is
  port (
    \Count_reg[0]_0\ : out STD_LOGIC;
    cat_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \cat[1]\ : out STD_LOGIC;
    \cat[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cat[1]_1\ : out STD_LOGIC;
    \cat[1]_2\ : out STD_LOGIC;
    \cat[1]_3\ : out STD_LOGIC;
    \cat[1]_4\ : out STD_LOGIC;
    Q2_reg : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \count_int_reg[14]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    intermediar_reg : in STD_LOGIC;
    count_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    intermediar_reg_0 : in STD_LOGIC;
    intermediar_reg_1 : in STD_LOGIC;
    \sw[1]\ : in STD_LOGIC;
    \sw[2]\ : in STD_LOGIC;
    Q3_reg : in STD_LOGIC;
    Q3 : in STD_LOGIC;
    Q2 : in STD_LOGIC
  );
end Divider;

architecture STRUCTURE of Divider is
  signal \Afisor/mux_out__11\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \Count[5]_i_2_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  signal \Count_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Dividend : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \Dividend[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[10]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[11]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[12]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[12]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[12]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[12]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[12]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[13]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[15]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[16]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[16]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[16]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[16]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[16]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[17]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[18]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[19]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[20]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[20]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[20]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[20]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[20]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[21]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[22]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[23]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[24]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[24]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[24]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[24]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[24]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[25]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[26]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[27]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[28]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[28]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[28]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[28]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[28]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[29]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[2]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[30]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[31]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[32]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[32]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[32]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[32]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[32]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[33]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[34]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[35]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[36]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[36]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[36]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[36]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[36]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[37]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[38]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[39]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[3]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[40]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[40]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[40]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[40]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[40]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[41]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[42]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[43]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[44]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[44]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[44]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[44]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[44]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[45]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[46]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[47]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[47]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[47]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[47]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[47]_i_7_n_0\ : STD_LOGIC;
  signal \Dividend[4]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[4]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[4]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[4]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[4]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[5]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[6]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[7]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[8]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend[8]_i_3_n_0\ : STD_LOGIC;
  signal \Dividend[8]_i_4_n_0\ : STD_LOGIC;
  signal \Dividend[8]_i_5_n_0\ : STD_LOGIC;
  signal \Dividend[8]_i_6_n_0\ : STD_LOGIC;
  signal \Dividend[9]_i_1_n_0\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[32]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[36]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[40]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[44]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[47]_i_4_n_2\ : STD_LOGIC;
  signal \Dividend_reg[47]_i_4_n_3\ : STD_LOGIC;
  signal \Dividend_reg[47]_i_4_n_5\ : STD_LOGIC;
  signal \Dividend_reg[47]_i_4_n_6\ : STD_LOGIC;
  signal \Dividend_reg[47]_i_4_n_7\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \Dividend_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal Division_Signal : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal Finish_Signal_i_1_n_0 : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 47 downto 23 );
  signal \Res_Sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[10]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[11]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[12]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[13]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[14]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[15]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[15]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[16]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[17]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[18]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[19]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[1]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[20]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[21]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[22]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[23]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[23]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[24]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[25]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[26]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[27]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[28]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[29]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[2]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[30]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[31]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[31]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[32]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[33]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[34]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[35]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[36]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[37]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[38]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[39]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[39]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[3]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[40]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[40]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[41]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[41]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[42]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[42]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[43]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[43]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[44]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[44]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[45]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[45]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[46]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[46]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[47]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[47]_i_3_n_0\ : STD_LOGIC;
  signal \Res_Sig[47]_i_4_n_0\ : STD_LOGIC;
  signal \Res_Sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[7]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[7]_i_2_n_0\ : STD_LOGIC;
  signal \Res_Sig[8]_i_1_n_0\ : STD_LOGIC;
  signal \Res_Sig[9]_i_1_n_0\ : STD_LOGIC;
  signal Result : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \cat_OBUF[6]_inst_i_15_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_16_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_17_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_18_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_20_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_21_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_21_n_1\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_21_n_2\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_21_n_3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_23_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_23_n_1\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_23_n_2\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_23_n_3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_26_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_27_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_36_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_36_n_1\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_36_n_2\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_36_n_3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_37_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_37_n_1\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_37_n_2\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_37_n_3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_38_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_38_n_1\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_38_n_2\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_38_n_3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_39_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_39_n_1\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_39_n_2\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_39_n_3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_40_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_41_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_42_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_43_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_44_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_45_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_46_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_47_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_48_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_49_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_50_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_52_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_54_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_55_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_56_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_57_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_58_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_59_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_60_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_61_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_62_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_63_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_64_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_65_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_66_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_67_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_68_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_69_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_70_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_71_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_72_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_73_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_74_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_75_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_76_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_77_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal digits : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal eqOp : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_1\ : STD_LOGIC;
  signal \geqOp_carry__1_n_2\ : STD_LOGIC;
  signal \geqOp_carry__1_n_3\ : STD_LOGIC;
  signal \geqOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_n_1\ : STD_LOGIC;
  signal \geqOp_carry__2_n_2\ : STD_LOGIC;
  signal \geqOp_carry__2_n_3\ : STD_LOGIC;
  signal \geqOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__3_n_1\ : STD_LOGIC;
  signal \geqOp_carry__3_n_2\ : STD_LOGIC;
  signal \geqOp_carry__3_n_3\ : STD_LOGIC;
  signal \geqOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \geqOp_carry__4_n_1\ : STD_LOGIC;
  signal \geqOp_carry__4_n_2\ : STD_LOGIC;
  signal \geqOp_carry__4_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \NLW_Dividend_reg[47]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Dividend_reg[47]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cat_OBUF[6]_inst_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cat_OBUF[6]_inst_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Count[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Count[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Dividend[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Dividend[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Dividend[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Dividend[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Dividend[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Dividend[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Dividend[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Dividend[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Dividend[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Dividend[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Dividend[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Dividend[20]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Dividend[21]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Dividend[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Dividend[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Dividend[24]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Dividend[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Dividend[26]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Dividend[27]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Dividend[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Dividend[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Dividend[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Dividend[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Dividend[32]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Dividend[33]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Dividend[34]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Dividend[35]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Dividend[36]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Dividend[37]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Dividend[38]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Dividend[39]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Dividend[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Dividend[40]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Dividend[41]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Dividend[42]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Dividend[43]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Dividend[44]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Dividend[45]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Dividend[46]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Dividend[47]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Dividend[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Dividend[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Dividend[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Dividend[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Dividend[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Dividend[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Res_Sig[15]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Res_Sig[23]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Res_Sig[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Res_Sig[39]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Res_Sig[40]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Res_Sig[41]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Res_Sig[42]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Res_Sig[43]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Res_Sig[44]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Res_Sig[45]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Res_Sig[46]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Res_Sig[47]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Res_Sig[47]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Res_Sig[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cat_OBUF[0]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cat_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cat_OBUF[2]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cat_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cat_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cat_OBUF[6]_inst_i_1\ : label is "soft_lutpair3";
begin
  \Count_reg[0]_0\ <= \^count_reg[0]_0\;
\Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Count_reg__0\(0),
      O => \Count[0]_i_1_n_0\
    );
\Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => \Count_reg__0\(1),
      O => \Count[1]_i_1_n_0\
    );
\Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => \Count_reg__0\(1),
      I2 => \Count_reg__0\(2),
      O => \Count[2]_i_1_n_0\
    );
\Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \Count_reg__0\(1),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(2),
      I3 => \Count_reg__0\(3),
      O => \Count[3]_i_1_n_0\
    );
\Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \Count_reg__0\(3),
      I1 => \Count_reg__0\(2),
      I2 => \Count_reg__0\(0),
      I3 => \Count_reg__0\(1),
      I4 => \Count_reg__0\(4),
      O => \Count[4]_i_1_n_0\
    );
\Count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => eqOp,
      I1 => \^count_reg[0]_0\,
      O => \Count[5]_i_1_n_0\
    );
\Count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \Count_reg__0\(4),
      I1 => \Count_reg__0\(1),
      I2 => \Count_reg__0\(0),
      I3 => \Count_reg__0\(2),
      I4 => \Count_reg__0\(3),
      I5 => \Count_reg__0\(5),
      O => \Count[5]_i_2_n_0\
    );
\Count[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \Count_reg__0\(4),
      I1 => \Count_reg__0\(3),
      I2 => \Count_reg__0\(5),
      I3 => \Count_reg__0\(0),
      I4 => \Count_reg__0\(1),
      I5 => \Count_reg__0\(2),
      O => eqOp
    );
\Count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Count[5]_i_1_n_0\,
      D => \Count[0]_i_1_n_0\,
      Q => \Count_reg__0\(0),
      S => Q2_reg
    );
\Count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Count[5]_i_1_n_0\,
      D => \Count[1]_i_1_n_0\,
      Q => \Count_reg__0\(1),
      S => Q2_reg
    );
\Count_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Count[5]_i_1_n_0\,
      D => \Count[2]_i_1_n_0\,
      Q => \Count_reg__0\(2),
      S => Q2_reg
    );
\Count_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Count[5]_i_1_n_0\,
      D => \Count[3]_i_1_n_0\,
      Q => \Count_reg__0\(3),
      S => Q2_reg
    );
\Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Count[5]_i_1_n_0\,
      D => \Count[4]_i_1_n_0\,
      Q => \Count_reg__0\(4),
      R => Q2_reg
    );
\Count_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \Count[5]_i_1_n_0\,
      D => \Count[5]_i_2_n_0\,
      Q => \Count_reg__0\(5),
      S => Q2_reg
    );
\Dividend[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => Q3,
      I1 => Q2,
      I2 => \^count_reg[0]_0\,
      I3 => Dividend(0),
      O => \Dividend[0]_i_1_n_0\
    );
\Dividend[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(9),
      I1 => geqOp,
      I2 => \Dividend_reg[12]_i_2_n_6\,
      O => \Dividend[10]_i_1_n_0\
    );
\Dividend[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(10),
      I1 => geqOp,
      I2 => \Dividend_reg[12]_i_2_n_5\,
      O => \Dividend[11]_i_1_n_0\
    );
\Dividend[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[12]_i_2_n_4\,
      I1 => Dividend(11),
      I2 => geqOp,
      O => \Dividend[12]_i_1_n_0\
    );
\Dividend[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(11),
      O => \Dividend[12]_i_3_n_0\
    );
\Dividend[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(10),
      O => \Dividend[12]_i_4_n_0\
    );
\Dividend[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(9),
      O => \Dividend[12]_i_5_n_0\
    );
\Dividend[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(8),
      O => \Dividend[12]_i_6_n_0\
    );
\Dividend[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[16]_i_2_n_7\,
      I1 => Dividend(12),
      I2 => geqOp,
      O => \Dividend[13]_i_1_n_0\
    );
\Dividend[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(13),
      I1 => geqOp,
      I2 => \Dividend_reg[16]_i_2_n_6\,
      O => \Dividend[14]_i_1_n_0\
    );
\Dividend[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(14),
      I1 => geqOp,
      I2 => \Dividend_reg[16]_i_2_n_5\,
      O => \Dividend[15]_i_1_n_0\
    );
\Dividend[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[16]_i_2_n_4\,
      I1 => Dividend(15),
      I2 => geqOp,
      O => \Dividend[16]_i_1_n_0\
    );
\Dividend[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(15),
      O => \Dividend[16]_i_3_n_0\
    );
\Dividend[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(14),
      O => \Dividend[16]_i_4_n_0\
    );
\Dividend[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(13),
      O => \Dividend[16]_i_5_n_0\
    );
\Dividend[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(12),
      O => \Dividend[16]_i_6_n_0\
    );
\Dividend[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[20]_i_2_n_7\,
      I1 => Dividend(16),
      I2 => geqOp,
      O => \Dividend[17]_i_1_n_0\
    );
\Dividend[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(17),
      I1 => geqOp,
      I2 => \Dividend_reg[20]_i_2_n_6\,
      O => \Dividend[18]_i_1_n_0\
    );
\Dividend[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(18),
      I1 => geqOp,
      I2 => \Dividend_reg[20]_i_2_n_5\,
      O => \Dividend[19]_i_1_n_0\
    );
\Dividend[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[4]_i_2_n_7\,
      I1 => Dividend(0),
      I2 => geqOp,
      O => \Dividend[1]_i_1_n_0\
    );
\Dividend[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[20]_i_2_n_4\,
      I1 => Dividend(19),
      I2 => geqOp,
      O => \Dividend[20]_i_1_n_0\
    );
\Dividend[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(19),
      O => \Dividend[20]_i_3_n_0\
    );
\Dividend[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(18),
      O => \Dividend[20]_i_4_n_0\
    );
\Dividend[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(17),
      O => \Dividend[20]_i_5_n_0\
    );
\Dividend[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(16),
      O => \Dividend[20]_i_6_n_0\
    );
\Dividend[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[24]_i_2_n_7\,
      I1 => Dividend(20),
      I2 => geqOp,
      O => \Dividend[21]_i_1_n_0\
    );
\Dividend[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(21),
      I1 => geqOp,
      I2 => \Dividend_reg[24]_i_2_n_6\,
      O => \Dividend[22]_i_1_n_0\
    );
\Dividend[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(22),
      I1 => geqOp,
      I2 => \Dividend_reg[24]_i_2_n_5\,
      O => \Dividend[23]_i_1_n_0\
    );
\Dividend[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[24]_i_2_n_4\,
      I1 => Dividend(23),
      I2 => geqOp,
      O => \Dividend[24]_i_1_n_0\
    );
\Dividend[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(23),
      O => \Dividend[24]_i_3_n_0\
    );
\Dividend[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(22),
      O => \Dividend[24]_i_4_n_0\
    );
\Dividend[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(21),
      O => \Dividend[24]_i_5_n_0\
    );
\Dividend[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(20),
      O => \Dividend[24]_i_6_n_0\
    );
\Dividend[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[28]_i_2_n_7\,
      I1 => Dividend(24),
      I2 => geqOp,
      O => \Dividend[25]_i_1_n_0\
    );
\Dividend[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[28]_i_2_n_6\,
      I1 => Dividend(25),
      I2 => geqOp,
      O => \Dividend[26]_i_1_n_0\
    );
\Dividend[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[28]_i_2_n_5\,
      I1 => Dividend(26),
      I2 => geqOp,
      O => \Dividend[27]_i_1_n_0\
    );
\Dividend[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[28]_i_2_n_4\,
      I1 => Dividend(27),
      I2 => geqOp,
      O => \Dividend[28]_i_1_n_0\
    );
\Dividend[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(27),
      O => \Dividend[28]_i_3_n_0\
    );
\Dividend[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(26),
      O => \Dividend[28]_i_4_n_0\
    );
\Dividend[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(25),
      O => \Dividend[28]_i_5_n_0\
    );
\Dividend[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(24),
      O => \Dividend[28]_i_6_n_0\
    );
\Dividend[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[32]_i_2_n_7\,
      I1 => Dividend(28),
      I2 => geqOp,
      O => \Dividend[29]_i_1_n_0\
    );
\Dividend[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(1),
      I1 => geqOp,
      I2 => \Dividend_reg[4]_i_2_n_6\,
      O => \Dividend[2]_i_1_n_0\
    );
\Dividend[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[32]_i_2_n_6\,
      I1 => Dividend(29),
      I2 => geqOp,
      O => \Dividend[30]_i_1_n_0\
    );
\Dividend[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[32]_i_2_n_5\,
      I1 => Dividend(30),
      I2 => geqOp,
      O => \Dividend[31]_i_1_n_0\
    );
\Dividend[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[32]_i_2_n_4\,
      I1 => Dividend(31),
      I2 => geqOp,
      O => \Dividend[32]_i_1_n_0\
    );
\Dividend[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(31),
      O => \Dividend[32]_i_3_n_0\
    );
\Dividend[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(30),
      O => \Dividend[32]_i_4_n_0\
    );
\Dividend[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(29),
      O => \Dividend[32]_i_5_n_0\
    );
\Dividend[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(28),
      O => \Dividend[32]_i_6_n_0\
    );
\Dividend[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[36]_i_2_n_7\,
      I1 => Dividend(32),
      I2 => geqOp,
      O => \Dividend[33]_i_1_n_0\
    );
\Dividend[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[36]_i_2_n_6\,
      I1 => Dividend(33),
      I2 => geqOp,
      O => \Dividend[34]_i_1_n_0\
    );
\Dividend[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[36]_i_2_n_5\,
      I1 => Dividend(34),
      I2 => geqOp,
      O => \Dividend[35]_i_1_n_0\
    );
\Dividend[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[36]_i_2_n_4\,
      I1 => Dividend(35),
      I2 => geqOp,
      O => \Dividend[36]_i_1_n_0\
    );
\Dividend[36]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(35),
      O => \Dividend[36]_i_3_n_0\
    );
\Dividend[36]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(34),
      O => \Dividend[36]_i_4_n_0\
    );
\Dividend[36]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(33),
      O => \Dividend[36]_i_5_n_0\
    );
\Dividend[36]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(32),
      O => \Dividend[36]_i_6_n_0\
    );
\Dividend[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[40]_i_2_n_7\,
      I1 => Dividend(36),
      I2 => geqOp,
      O => \Dividend[37]_i_1_n_0\
    );
\Dividend[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[40]_i_2_n_6\,
      I1 => Dividend(37),
      I2 => geqOp,
      O => \Dividend[38]_i_1_n_0\
    );
\Dividend[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[40]_i_2_n_5\,
      I1 => Dividend(38),
      I2 => geqOp,
      O => \Dividend[39]_i_1_n_0\
    );
\Dividend[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(2),
      I1 => geqOp,
      I2 => \Dividend_reg[4]_i_2_n_5\,
      O => \Dividend[3]_i_1_n_0\
    );
\Dividend[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[40]_i_2_n_4\,
      I1 => Dividend(39),
      I2 => geqOp,
      O => \Dividend[40]_i_1_n_0\
    );
\Dividend[40]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(39),
      O => \Dividend[40]_i_3_n_0\
    );
\Dividend[40]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(38),
      O => \Dividend[40]_i_4_n_0\
    );
\Dividend[40]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(37),
      O => \Dividend[40]_i_5_n_0\
    );
\Dividend[40]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(36),
      O => \Dividend[40]_i_6_n_0\
    );
\Dividend[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[44]_i_2_n_7\,
      I1 => Dividend(40),
      I2 => geqOp,
      O => \Dividend[41]_i_1_n_0\
    );
\Dividend[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[44]_i_2_n_6\,
      I1 => Dividend(41),
      I2 => geqOp,
      O => \Dividend[42]_i_1_n_0\
    );
\Dividend[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[44]_i_2_n_5\,
      I1 => Dividend(42),
      I2 => geqOp,
      O => \Dividend[43]_i_1_n_0\
    );
\Dividend[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[44]_i_2_n_4\,
      I1 => Dividend(43),
      I2 => geqOp,
      O => \Dividend[44]_i_1_n_0\
    );
\Dividend[44]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(43),
      O => \Dividend[44]_i_3_n_0\
    );
\Dividend[44]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(42),
      O => \Dividend[44]_i_4_n_0\
    );
\Dividend[44]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(41),
      O => \Dividend[44]_i_5_n_0\
    );
\Dividend[44]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(40),
      O => \Dividend[44]_i_6_n_0\
    );
\Dividend[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[47]_i_4_n_7\,
      I1 => Dividend(44),
      I2 => geqOp,
      O => \Dividend[45]_i_1_n_0\
    );
\Dividend[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[47]_i_4_n_6\,
      I1 => Dividend(45),
      I2 => geqOp,
      O => \Dividend[46]_i_1_n_0\
    );
\Dividend[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q2,
      I1 => Q3,
      O => \Dividend[47]_i_1_n_0\
    );
\Dividend[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[47]_i_4_n_5\,
      I1 => Dividend(46),
      I2 => geqOp,
      O => \Dividend[47]_i_3_n_0\
    );
\Dividend[47]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(46),
      O => \Dividend[47]_i_5_n_0\
    );
\Dividend[47]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(45),
      O => \Dividend[47]_i_6_n_0\
    );
\Dividend[47]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(44),
      O => \Dividend[47]_i_7_n_0\
    );
\Dividend[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[4]_i_2_n_4\,
      I1 => Dividend(3),
      I2 => geqOp,
      O => \Dividend[4]_i_1_n_0\
    );
\Dividend[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(3),
      O => \Dividend[4]_i_3_n_0\
    );
\Dividend[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(2),
      O => \Dividend[4]_i_4_n_0\
    );
\Dividend[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(1),
      O => \Dividend[4]_i_5_n_0\
    );
\Dividend[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(0),
      O => \Dividend[4]_i_6_n_0\
    );
\Dividend[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[8]_i_2_n_7\,
      I1 => Dividend(4),
      I2 => geqOp,
      O => \Dividend[5]_i_1_n_0\
    );
\Dividend[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(5),
      I1 => geqOp,
      I2 => \Dividend_reg[8]_i_2_n_6\,
      O => \Dividend[6]_i_1_n_0\
    );
\Dividend[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Dividend(6),
      I1 => geqOp,
      I2 => \Dividend_reg[8]_i_2_n_5\,
      O => \Dividend[7]_i_1_n_0\
    );
\Dividend[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[8]_i_2_n_4\,
      I1 => Dividend(7),
      I2 => geqOp,
      O => \Dividend[8]_i_1_n_0\
    );
\Dividend[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(7),
      O => \Dividend[8]_i_3_n_0\
    );
\Dividend[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(6),
      O => \Dividend[8]_i_4_n_0\
    );
\Dividend[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(5),
      O => \Dividend[8]_i_5_n_0\
    );
\Dividend[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(4),
      O => \Dividend[8]_i_6_n_0\
    );
\Dividend[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Dividend_reg[12]_i_2_n_7\,
      I1 => Dividend(8),
      I2 => geqOp,
      O => \Dividend[9]_i_1_n_0\
    );
\Dividend_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Dividend[0]_i_1_n_0\,
      Q => Dividend(0),
      R => '0'
    );
\Dividend_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[10]_i_1_n_0\,
      Q => Dividend(10),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[11]_i_1_n_0\,
      Q => Dividend(11),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[12]_i_1_n_0\,
      Q => Dividend(12),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[8]_i_2_n_0\,
      CO(3) => \Dividend_reg[12]_i_2_n_0\,
      CO(2) => \Dividend_reg[12]_i_2_n_1\,
      CO(1) => \Dividend_reg[12]_i_2_n_2\,
      CO(0) => \Dividend_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(11 downto 8),
      O(3) => \Dividend_reg[12]_i_2_n_4\,
      O(2) => \Dividend_reg[12]_i_2_n_5\,
      O(1) => \Dividend_reg[12]_i_2_n_6\,
      O(0) => \Dividend_reg[12]_i_2_n_7\,
      S(3) => \Dividend[12]_i_3_n_0\,
      S(2) => \Dividend[12]_i_4_n_0\,
      S(1) => \Dividend[12]_i_5_n_0\,
      S(0) => \Dividend[12]_i_6_n_0\
    );
\Dividend_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[13]_i_1_n_0\,
      Q => Dividend(13),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[14]_i_1_n_0\,
      Q => Dividend(14),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[15]_i_1_n_0\,
      Q => Dividend(15),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[16]_i_1_n_0\,
      Q => Dividend(16),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[12]_i_2_n_0\,
      CO(3) => \Dividend_reg[16]_i_2_n_0\,
      CO(2) => \Dividend_reg[16]_i_2_n_1\,
      CO(1) => \Dividend_reg[16]_i_2_n_2\,
      CO(0) => \Dividend_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(15 downto 12),
      O(3) => \Dividend_reg[16]_i_2_n_4\,
      O(2) => \Dividend_reg[16]_i_2_n_5\,
      O(1) => \Dividend_reg[16]_i_2_n_6\,
      O(0) => \Dividend_reg[16]_i_2_n_7\,
      S(3) => \Dividend[16]_i_3_n_0\,
      S(2) => \Dividend[16]_i_4_n_0\,
      S(1) => \Dividend[16]_i_5_n_0\,
      S(0) => \Dividend[16]_i_6_n_0\
    );
\Dividend_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[17]_i_1_n_0\,
      Q => Dividend(17),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[18]_i_1_n_0\,
      Q => Dividend(18),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[19]_i_1_n_0\,
      Q => Dividend(19),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[1]_i_1_n_0\,
      Q => Dividend(1),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[20]_i_1_n_0\,
      Q => Dividend(20),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[16]_i_2_n_0\,
      CO(3) => \Dividend_reg[20]_i_2_n_0\,
      CO(2) => \Dividend_reg[20]_i_2_n_1\,
      CO(1) => \Dividend_reg[20]_i_2_n_2\,
      CO(0) => \Dividend_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(19 downto 16),
      O(3) => \Dividend_reg[20]_i_2_n_4\,
      O(2) => \Dividend_reg[20]_i_2_n_5\,
      O(1) => \Dividend_reg[20]_i_2_n_6\,
      O(0) => \Dividend_reg[20]_i_2_n_7\,
      S(3) => \Dividend[20]_i_3_n_0\,
      S(2) => \Dividend[20]_i_4_n_0\,
      S(1) => \Dividend[20]_i_5_n_0\,
      S(0) => \Dividend[20]_i_6_n_0\
    );
\Dividend_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[21]_i_1_n_0\,
      Q => Dividend(21),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[22]_i_1_n_0\,
      Q => Dividend(22),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[23]_i_1_n_0\,
      Q => Dividend(23),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[24]_i_1_n_0\,
      Q => Dividend(24),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[20]_i_2_n_0\,
      CO(3) => \Dividend_reg[24]_i_2_n_0\,
      CO(2) => \Dividend_reg[24]_i_2_n_1\,
      CO(1) => \Dividend_reg[24]_i_2_n_2\,
      CO(0) => \Dividend_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(23 downto 20),
      O(3) => \Dividend_reg[24]_i_2_n_4\,
      O(2) => \Dividend_reg[24]_i_2_n_5\,
      O(1) => \Dividend_reg[24]_i_2_n_6\,
      O(0) => \Dividend_reg[24]_i_2_n_7\,
      S(3) => \Dividend[24]_i_3_n_0\,
      S(2) => \Dividend[24]_i_4_n_0\,
      S(1) => \Dividend[24]_i_5_n_0\,
      S(0) => \Dividend[24]_i_6_n_0\
    );
\Dividend_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[25]_i_1_n_0\,
      Q => Dividend(25),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[26]_i_1_n_0\,
      Q => Dividend(26),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[27]_i_1_n_0\,
      Q => Dividend(27),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[28]_i_1_n_0\,
      Q => Dividend(28),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[24]_i_2_n_0\,
      CO(3) => \Dividend_reg[28]_i_2_n_0\,
      CO(2) => \Dividend_reg[28]_i_2_n_1\,
      CO(1) => \Dividend_reg[28]_i_2_n_2\,
      CO(0) => \Dividend_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(27 downto 24),
      O(3) => \Dividend_reg[28]_i_2_n_4\,
      O(2) => \Dividend_reg[28]_i_2_n_5\,
      O(1) => \Dividend_reg[28]_i_2_n_6\,
      O(0) => \Dividend_reg[28]_i_2_n_7\,
      S(3) => \Dividend[28]_i_3_n_0\,
      S(2) => \Dividend[28]_i_4_n_0\,
      S(1) => \Dividend[28]_i_5_n_0\,
      S(0) => \Dividend[28]_i_6_n_0\
    );
\Dividend_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[29]_i_1_n_0\,
      Q => Dividend(29),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[2]_i_1_n_0\,
      Q => Dividend(2),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[30]_i_1_n_0\,
      Q => Dividend(30),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[31]_i_1_n_0\,
      Q => Dividend(31),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[32]_i_1_n_0\,
      Q => Dividend(32),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[32]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[28]_i_2_n_0\,
      CO(3) => \Dividend_reg[32]_i_2_n_0\,
      CO(2) => \Dividend_reg[32]_i_2_n_1\,
      CO(1) => \Dividend_reg[32]_i_2_n_2\,
      CO(0) => \Dividend_reg[32]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(31 downto 28),
      O(3) => \Dividend_reg[32]_i_2_n_4\,
      O(2) => \Dividend_reg[32]_i_2_n_5\,
      O(1) => \Dividend_reg[32]_i_2_n_6\,
      O(0) => \Dividend_reg[32]_i_2_n_7\,
      S(3) => \Dividend[32]_i_3_n_0\,
      S(2) => \Dividend[32]_i_4_n_0\,
      S(1) => \Dividend[32]_i_5_n_0\,
      S(0) => \Dividend[32]_i_6_n_0\
    );
\Dividend_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[33]_i_1_n_0\,
      Q => Dividend(33),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[34]_i_1_n_0\,
      Q => Dividend(34),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[35]_i_1_n_0\,
      Q => Dividend(35),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[36]_i_1_n_0\,
      Q => Dividend(36),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[36]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[32]_i_2_n_0\,
      CO(3) => \Dividend_reg[36]_i_2_n_0\,
      CO(2) => \Dividend_reg[36]_i_2_n_1\,
      CO(1) => \Dividend_reg[36]_i_2_n_2\,
      CO(0) => \Dividend_reg[36]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(35 downto 32),
      O(3) => \Dividend_reg[36]_i_2_n_4\,
      O(2) => \Dividend_reg[36]_i_2_n_5\,
      O(1) => \Dividend_reg[36]_i_2_n_6\,
      O(0) => \Dividend_reg[36]_i_2_n_7\,
      S(3) => \Dividend[36]_i_3_n_0\,
      S(2) => \Dividend[36]_i_4_n_0\,
      S(1) => \Dividend[36]_i_5_n_0\,
      S(0) => \Dividend[36]_i_6_n_0\
    );
\Dividend_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[37]_i_1_n_0\,
      Q => Dividend(37),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[38]_i_1_n_0\,
      Q => Dividend(38),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[39]_i_1_n_0\,
      Q => Dividend(39),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[3]_i_1_n_0\,
      Q => Dividend(3),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[40]_i_1_n_0\,
      Q => Dividend(40),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[40]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[36]_i_2_n_0\,
      CO(3) => \Dividend_reg[40]_i_2_n_0\,
      CO(2) => \Dividend_reg[40]_i_2_n_1\,
      CO(1) => \Dividend_reg[40]_i_2_n_2\,
      CO(0) => \Dividend_reg[40]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(39 downto 36),
      O(3) => \Dividend_reg[40]_i_2_n_4\,
      O(2) => \Dividend_reg[40]_i_2_n_5\,
      O(1) => \Dividend_reg[40]_i_2_n_6\,
      O(0) => \Dividend_reg[40]_i_2_n_7\,
      S(3) => \Dividend[40]_i_3_n_0\,
      S(2) => \Dividend[40]_i_4_n_0\,
      S(1) => \Dividend[40]_i_5_n_0\,
      S(0) => \Dividend[40]_i_6_n_0\
    );
\Dividend_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[41]_i_1_n_0\,
      Q => Dividend(41),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[42]_i_1_n_0\,
      Q => Dividend(42),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[43]_i_1_n_0\,
      Q => Dividend(43),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[44]_i_1_n_0\,
      Q => Dividend(44),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[44]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[40]_i_2_n_0\,
      CO(3) => \Dividend_reg[44]_i_2_n_0\,
      CO(2) => \Dividend_reg[44]_i_2_n_1\,
      CO(1) => \Dividend_reg[44]_i_2_n_2\,
      CO(0) => \Dividend_reg[44]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(43 downto 40),
      O(3) => \Dividend_reg[44]_i_2_n_4\,
      O(2) => \Dividend_reg[44]_i_2_n_5\,
      O(1) => \Dividend_reg[44]_i_2_n_6\,
      O(0) => \Dividend_reg[44]_i_2_n_7\,
      S(3) => \Dividend[44]_i_3_n_0\,
      S(2) => \Dividend[44]_i_4_n_0\,
      S(1) => \Dividend[44]_i_5_n_0\,
      S(0) => \Dividend[44]_i_6_n_0\
    );
\Dividend_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[45]_i_1_n_0\,
      Q => Dividend(45),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[46]_i_1_n_0\,
      Q => Dividend(46),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[47]_i_3_n_0\,
      Q => Dividend(47),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[47]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[44]_i_2_n_0\,
      CO(3 downto 2) => \NLW_Dividend_reg[47]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Dividend_reg[47]_i_4_n_2\,
      CO(0) => \Dividend_reg[47]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Dividend(45 downto 44),
      O(3) => \NLW_Dividend_reg[47]_i_4_O_UNCONNECTED\(3),
      O(2) => \Dividend_reg[47]_i_4_n_5\,
      O(1) => \Dividend_reg[47]_i_4_n_6\,
      O(0) => \Dividend_reg[47]_i_4_n_7\,
      S(3) => '0',
      S(2) => \Dividend[47]_i_5_n_0\,
      S(1) => \Dividend[47]_i_6_n_0\,
      S(0) => \Dividend[47]_i_7_n_0\
    );
\Dividend_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[4]_i_1_n_0\,
      Q => Dividend(4),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Dividend_reg[4]_i_2_n_0\,
      CO(2) => \Dividend_reg[4]_i_2_n_1\,
      CO(1) => \Dividend_reg[4]_i_2_n_2\,
      CO(0) => \Dividend_reg[4]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Dividend(3 downto 0),
      O(3) => \Dividend_reg[4]_i_2_n_4\,
      O(2) => \Dividend_reg[4]_i_2_n_5\,
      O(1) => \Dividend_reg[4]_i_2_n_6\,
      O(0) => \Dividend_reg[4]_i_2_n_7\,
      S(3) => \Dividend[4]_i_3_n_0\,
      S(2) => \Dividend[4]_i_4_n_0\,
      S(1) => \Dividend[4]_i_5_n_0\,
      S(0) => \Dividend[4]_i_6_n_0\
    );
\Dividend_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[5]_i_1_n_0\,
      Q => Dividend(5),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[6]_i_1_n_0\,
      Q => Dividend(6),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[7]_i_1_n_0\,
      Q => Dividend(7),
      S => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[8]_i_1_n_0\,
      Q => Dividend(8),
      R => \Dividend[47]_i_1_n_0\
    );
\Dividend_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Dividend_reg[4]_i_2_n_0\,
      CO(3) => \Dividend_reg[8]_i_2_n_0\,
      CO(2) => \Dividend_reg[8]_i_2_n_1\,
      CO(1) => \Dividend_reg[8]_i_2_n_2\,
      CO(0) => \Dividend_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Dividend(7 downto 4),
      O(3) => \Dividend_reg[8]_i_2_n_4\,
      O(2) => \Dividend_reg[8]_i_2_n_5\,
      O(1) => \Dividend_reg[8]_i_2_n_6\,
      O(0) => \Dividend_reg[8]_i_2_n_7\,
      S(3) => \Dividend[8]_i_3_n_0\,
      S(2) => \Dividend[8]_i_4_n_0\,
      S(1) => \Dividend[8]_i_5_n_0\,
      S(0) => \Dividend[8]_i_6_n_0\
    );
\Dividend_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Q3_reg,
      D => \Dividend[9]_i_1_n_0\,
      Q => Dividend(9),
      R => \Dividend[47]_i_1_n_0\
    );
Finish_Signal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => eqOp,
      I1 => \^count_reg[0]_0\,
      O => Finish_Signal_i_1_n_0
    );
Finish_Signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Finish_Signal_i_1_n_0,
      Q => \^count_reg[0]_0\,
      R => Q2_reg
    );
\Res_Sig[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[40]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(21),
      O => \Res_Sig[0]_i_1_n_0\
    );
\Res_Sig[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[42]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(11),
      O => \Res_Sig[10]_i_1_n_0\
    );
\Res_Sig[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[43]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(10),
      O => \Res_Sig[11]_i_1_n_0\
    );
\Res_Sig[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[44]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(9),
      O => \Res_Sig[12]_i_1_n_0\
    );
\Res_Sig[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[45]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(8),
      O => \Res_Sig[13]_i_1_n_0\
    );
\Res_Sig[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[46]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(7),
      O => \Res_Sig[14]_i_1_n_0\
    );
\Res_Sig[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[47]_i_3_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(6),
      O => \Res_Sig[15]_i_1_n_0\
    );
\Res_Sig[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(4),
      I2 => \Count_reg__0\(3),
      O => \Res_Sig[15]_i_2_n_0\
    );
\Res_Sig[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[40]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(5),
      O => \Res_Sig[16]_i_1_n_0\
    );
\Res_Sig[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[41]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(4),
      O => \Res_Sig[17]_i_1_n_0\
    );
\Res_Sig[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[42]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(3),
      O => \Res_Sig[18]_i_1_n_0\
    );
\Res_Sig[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[43]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(2),
      O => \Res_Sig[19]_i_1_n_0\
    );
\Res_Sig[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[41]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(20),
      O => \Res_Sig[1]_i_1_n_0\
    );
\Res_Sig[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[44]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(1),
      O => \Res_Sig[20]_i_1_n_0\
    );
\Res_Sig[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[45]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(0),
      O => \Res_Sig[21]_i_1_n_0\
    );
\Res_Sig[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[46]_i_2_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => data0,
      O => \Res_Sig[22]_i_1_n_0\
    );
\Res_Sig[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[47]_i_3_n_0\,
      I2 => \Res_Sig[23]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(23),
      O => \Res_Sig[23]_i_1_n_0\
    );
\Res_Sig[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(3),
      I2 => \Count_reg__0\(4),
      O => \Res_Sig[23]_i_2_n_0\
    );
\Res_Sig[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[40]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(24),
      O => \Res_Sig[24]_i_1_n_0\
    );
\Res_Sig[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[41]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(25),
      O => \Res_Sig[25]_i_1_n_0\
    );
\Res_Sig[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[42]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(26),
      O => \Res_Sig[26]_i_1_n_0\
    );
\Res_Sig[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[43]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(27),
      O => \Res_Sig[27]_i_1_n_0\
    );
\Res_Sig[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[44]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(28),
      O => \Res_Sig[28]_i_1_n_0\
    );
\Res_Sig[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[45]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(29),
      O => \Res_Sig[29]_i_1_n_0\
    );
\Res_Sig[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[42]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(19),
      O => \Res_Sig[2]_i_1_n_0\
    );
\Res_Sig[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[46]_i_2_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(30),
      O => \Res_Sig[30]_i_1_n_0\
    );
\Res_Sig[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[47]_i_3_n_0\,
      I2 => \Res_Sig[31]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(31),
      O => \Res_Sig[31]_i_1_n_0\
    );
\Res_Sig[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(3),
      I2 => \Count_reg__0\(4),
      O => \Res_Sig[31]_i_2_n_0\
    );
\Res_Sig[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[40]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(32),
      O => \Res_Sig[32]_i_1_n_0\
    );
\Res_Sig[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[41]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(33),
      O => \Res_Sig[33]_i_1_n_0\
    );
\Res_Sig[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[42]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(34),
      O => \Res_Sig[34]_i_1_n_0\
    );
\Res_Sig[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[43]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(35),
      O => \Res_Sig[35]_i_1_n_0\
    );
\Res_Sig[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[44]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(36),
      O => \Res_Sig[36]_i_1_n_0\
    );
\Res_Sig[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[45]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(37),
      O => \Res_Sig[37]_i_1_n_0\
    );
\Res_Sig[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[46]_i_2_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(38),
      O => \Res_Sig[38]_i_1_n_0\
    );
\Res_Sig[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[47]_i_3_n_0\,
      I2 => \Res_Sig[39]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(39),
      O => \Res_Sig[39]_i_1_n_0\
    );
\Res_Sig[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(3),
      I2 => \Count_reg__0\(4),
      O => \Res_Sig[39]_i_2_n_0\
    );
\Res_Sig[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[43]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(18),
      O => \Res_Sig[3]_i_1_n_0\
    );
\Res_Sig[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[40]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(40),
      O => \Res_Sig[40]_i_1_n_0\
    );
\Res_Sig[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      O => \Res_Sig[40]_i_2_n_0\
    );
\Res_Sig[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[41]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(41),
      O => \Res_Sig[41]_i_1_n_0\
    );
\Res_Sig[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(1),
      I2 => \Count_reg__0\(0),
      O => \Res_Sig[41]_i_2_n_0\
    );
\Res_Sig[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[42]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(42),
      O => \Res_Sig[42]_i_1_n_0\
    );
\Res_Sig[42]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      O => \Res_Sig[42]_i_2_n_0\
    );
\Res_Sig[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[43]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(43),
      O => \Res_Sig[43]_i_1_n_0\
    );
\Res_Sig[43]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      O => \Res_Sig[43]_i_2_n_0\
    );
\Res_Sig[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[44]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(44),
      O => \Res_Sig[44]_i_1_n_0\
    );
\Res_Sig[44]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      O => \Res_Sig[44]_i_2_n_0\
    );
\Res_Sig[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[45]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(45),
      O => \Res_Sig[45]_i_1_n_0\
    );
\Res_Sig[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(1),
      I2 => \Count_reg__0\(0),
      O => \Res_Sig[45]_i_2_n_0\
    );
\Res_Sig[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[46]_i_2_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(46),
      O => \Res_Sig[46]_i_1_n_0\
    );
\Res_Sig[46]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      O => \Res_Sig[46]_i_2_n_0\
    );
\Res_Sig[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[47]_i_3_n_0\,
      I2 => \Res_Sig[47]_i_4_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => L(47),
      O => \Res_Sig[47]_i_2_n_0\
    );
\Res_Sig[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      O => \Res_Sig[47]_i_3_n_0\
    );
\Res_Sig[47]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(4),
      I2 => \Count_reg__0\(3),
      O => \Res_Sig[47]_i_4_n_0\
    );
\Res_Sig[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[44]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(17),
      O => \Res_Sig[4]_i_1_n_0\
    );
\Res_Sig[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[45]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(16),
      O => \Res_Sig[5]_i_1_n_0\
    );
\Res_Sig[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[46]_i_2_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(15),
      O => \Res_Sig[6]_i_1_n_0\
    );
\Res_Sig[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[47]_i_3_n_0\,
      I2 => \Res_Sig[7]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(14),
      O => \Res_Sig[7]_i_1_n_0\
    );
\Res_Sig[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(3),
      I2 => \Count_reg__0\(4),
      O => \Res_Sig[7]_i_2_n_0\
    );
\Res_Sig[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[40]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(13),
      O => \Res_Sig[8]_i_1_n_0\
    );
\Res_Sig[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => geqOp,
      I1 => \Res_Sig[41]_i_2_n_0\,
      I2 => \Res_Sig[15]_i_2_n_0\,
      I3 => \^count_reg[0]_0\,
      I4 => sel0(12),
      O => \Res_Sig[9]_i_1_n_0\
    );
\Res_Sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[0]_i_1_n_0\,
      Q => sel0(21),
      R => Q2_reg
    );
\Res_Sig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[10]_i_1_n_0\,
      Q => sel0(11),
      R => Q2_reg
    );
\Res_Sig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[11]_i_1_n_0\,
      Q => sel0(10),
      R => Q2_reg
    );
\Res_Sig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[12]_i_1_n_0\,
      Q => sel0(9),
      R => Q2_reg
    );
\Res_Sig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[13]_i_1_n_0\,
      Q => sel0(8),
      R => Q2_reg
    );
\Res_Sig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[14]_i_1_n_0\,
      Q => sel0(7),
      R => Q2_reg
    );
\Res_Sig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[15]_i_1_n_0\,
      Q => sel0(6),
      R => Q2_reg
    );
\Res_Sig_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[16]_i_1_n_0\,
      Q => sel0(5),
      R => Q2_reg
    );
\Res_Sig_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[17]_i_1_n_0\,
      Q => sel0(4),
      R => Q2_reg
    );
\Res_Sig_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[18]_i_1_n_0\,
      Q => sel0(3),
      R => Q2_reg
    );
\Res_Sig_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[19]_i_1_n_0\,
      Q => sel0(2),
      R => Q2_reg
    );
\Res_Sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[1]_i_1_n_0\,
      Q => sel0(20),
      R => Q2_reg
    );
\Res_Sig_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[20]_i_1_n_0\,
      Q => sel0(1),
      R => Q2_reg
    );
\Res_Sig_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[21]_i_1_n_0\,
      Q => sel0(0),
      R => Q2_reg
    );
\Res_Sig_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[22]_i_1_n_0\,
      Q => data0,
      R => Q2_reg
    );
\Res_Sig_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[23]_i_1_n_0\,
      Q => L(23),
      R => Q2_reg
    );
\Res_Sig_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[24]_i_1_n_0\,
      Q => L(24),
      R => Q2_reg
    );
\Res_Sig_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[25]_i_1_n_0\,
      Q => L(25),
      R => Q2_reg
    );
\Res_Sig_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[26]_i_1_n_0\,
      Q => L(26),
      R => Q2_reg
    );
\Res_Sig_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[27]_i_1_n_0\,
      Q => L(27),
      R => Q2_reg
    );
\Res_Sig_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[28]_i_1_n_0\,
      Q => L(28),
      R => Q2_reg
    );
\Res_Sig_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[29]_i_1_n_0\,
      Q => L(29),
      R => Q2_reg
    );
\Res_Sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[2]_i_1_n_0\,
      Q => sel0(19),
      R => Q2_reg
    );
\Res_Sig_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[30]_i_1_n_0\,
      Q => L(30),
      R => Q2_reg
    );
\Res_Sig_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[31]_i_1_n_0\,
      Q => L(31),
      R => Q2_reg
    );
\Res_Sig_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[32]_i_1_n_0\,
      Q => L(32),
      R => Q2_reg
    );
\Res_Sig_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[33]_i_1_n_0\,
      Q => L(33),
      R => Q2_reg
    );
\Res_Sig_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[34]_i_1_n_0\,
      Q => L(34),
      R => Q2_reg
    );
\Res_Sig_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[35]_i_1_n_0\,
      Q => L(35),
      R => Q2_reg
    );
\Res_Sig_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[36]_i_1_n_0\,
      Q => L(36),
      R => Q2_reg
    );
\Res_Sig_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[37]_i_1_n_0\,
      Q => L(37),
      R => Q2_reg
    );
\Res_Sig_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[38]_i_1_n_0\,
      Q => L(38),
      R => Q2_reg
    );
\Res_Sig_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[39]_i_1_n_0\,
      Q => L(39),
      R => Q2_reg
    );
\Res_Sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[3]_i_1_n_0\,
      Q => sel0(18),
      R => Q2_reg
    );
\Res_Sig_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[40]_i_1_n_0\,
      Q => L(40),
      R => Q2_reg
    );
\Res_Sig_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[41]_i_1_n_0\,
      Q => L(41),
      R => Q2_reg
    );
\Res_Sig_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[42]_i_1_n_0\,
      Q => L(42),
      R => Q2_reg
    );
\Res_Sig_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[43]_i_1_n_0\,
      Q => L(43),
      R => Q2_reg
    );
\Res_Sig_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[44]_i_1_n_0\,
      Q => L(44),
      R => Q2_reg
    );
\Res_Sig_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[45]_i_1_n_0\,
      Q => L(45),
      R => Q2_reg
    );
\Res_Sig_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[46]_i_1_n_0\,
      Q => L(46),
      R => Q2_reg
    );
\Res_Sig_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[47]_i_2_n_0\,
      Q => L(47),
      R => Q2_reg
    );
\Res_Sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[4]_i_1_n_0\,
      Q => sel0(17),
      R => Q2_reg
    );
\Res_Sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[5]_i_1_n_0\,
      Q => sel0(16),
      R => Q2_reg
    );
\Res_Sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[6]_i_1_n_0\,
      Q => sel0(15),
      R => Q2_reg
    );
\Res_Sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[7]_i_1_n_0\,
      Q => sel0(14),
      R => Q2_reg
    );
\Res_Sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[8]_i_1_n_0\,
      Q => sel0(13),
      R => Q2_reg
    );
\Res_Sig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \Res_Sig[9]_i_1_n_0\,
      Q => sel0(12),
      R => Q2_reg
    );
\cat_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \count_int_reg[14]\(1),
      I2 => \count_int_reg[14]\(0),
      I3 => \Afisor/mux_out__11\(1),
      O => cat_OBUF(0)
    );
\cat_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \count_int_reg[14]\(1),
      I2 => \Afisor/mux_out__11\(1),
      I3 => \count_int_reg[14]\(0),
      O => cat_OBUF(1)
    );
\cat_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \count_int_reg[14]\(0),
      I2 => \Afisor/mux_out__11\(1),
      I3 => \count_int_reg[14]\(1),
      O => cat_OBUF(2)
    );
\cat_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \count_int_reg[14]\(1),
      I2 => \count_int_reg[14]\(0),
      I3 => \Afisor/mux_out__11\(1),
      O => cat_OBUF(3)
    );
\cat_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \Afisor/mux_out__11\(1),
      I2 => \count_int_reg[14]\(1),
      I3 => \count_int_reg[14]\(0),
      O => cat_OBUF(4)
    );
\cat_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \count_int_reg[14]\(1),
      I2 => \count_int_reg[14]\(0),
      I3 => \Afisor/mux_out__11\(1),
      O => cat_OBUF(5)
    );
\cat_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \Afisor/mux_out__11\(3),
      I1 => \count_int_reg[14]\(0),
      I2 => \count_int_reg[14]\(1),
      I3 => \Afisor/mux_out__11\(1),
      O => cat_OBUF(6)
    );
\cat_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCC00007400"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_26_n_0\,
      I1 => count_reg(1),
      I2 => \cat_OBUF[6]_inst_i_27_n_0\,
      I3 => sw_IBUF(2),
      I4 => sw_IBUF(0),
      I5 => sw_IBUF(1),
      O => \cat[1]_1\
    );
\cat_OBUF[6]_inst_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => digits(14),
      I1 => digits(6),
      O => \cat[1]_2\,
      S => count_reg(1)
    );
\cat_OBUF[6]_inst_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => digits(13),
      I1 => digits(5),
      O => \cat_OBUF[6]_inst_i_15_n_0\,
      S => count_reg(1)
    );
\cat_OBUF[6]_inst_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => digits(9),
      I1 => digits(1),
      O => \cat_OBUF[6]_inst_i_16_n_0\,
      S => count_reg(1)
    );
\cat_OBUF[6]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Division_Signal(4),
      I1 => Division_Signal(3),
      I2 => intermediar_reg,
      I3 => Division_Signal(20),
      I4 => Result(24),
      I5 => Division_Signal(19),
      O => \cat_OBUF[6]_inst_i_17_n_0\
    );
\cat_OBUF[6]_inst_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => Division_Signal(12),
      I2 => Result(24),
      I3 => Division_Signal(11),
      I4 => intermediar_reg,
      O => \cat_OBUF[6]_inst_i_18_n_0\
    );
\cat_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB8BB"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_6_n_0\,
      I1 => count_reg(0),
      I2 => digits(7),
      I3 => count_reg(1),
      I4 => intermediar_reg_1,
      I5 => \cat_OBUF[6]_inst_i_9_n_0\,
      O => \Afisor/mux_out__11\(3)
    );
\cat_OBUF[6]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5777D7F7"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => Result(24),
      I2 => intermediar_reg,
      I3 => Division_Signal(7),
      I4 => Division_Signal(8),
      O => \cat_OBUF[6]_inst_i_20_n_0\
    );
\cat_OBUF[6]_inst_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \cat_OBUF[6]_inst_i_39_n_0\,
      CO(3) => \cat_OBUF[6]_inst_i_21_n_0\,
      CO(2) => \cat_OBUF[6]_inst_i_21_n_1\,
      CO(1) => \cat_OBUF[6]_inst_i_21_n_2\,
      CO(0) => \cat_OBUF[6]_inst_i_21_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => Division_Signal(15 downto 12),
      S(3) => \cat_OBUF[6]_inst_i_40_n_0\,
      S(2) => \cat_OBUF[6]_inst_i_41_n_0\,
      S(1) => \cat_OBUF[6]_inst_i_42_n_0\,
      S(0) => \cat_OBUF[6]_inst_i_43_n_0\
    );
\cat_OBUF[6]_inst_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \cat_OBUF[6]_inst_i_38_n_0\,
      CO(3 downto 0) => \NLW_cat_OBUF[6]_inst_i_22_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cat_OBUF[6]_inst_i_22_O_UNCONNECTED\(3 downto 1),
      O(0) => Result(24),
      S(3 downto 1) => B"000",
      S(0) => \cat_OBUF[6]_inst_i_44_n_0\
    );
\cat_OBUF[6]_inst_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \cat_OBUF[6]_inst_i_21_n_0\,
      CO(3) => \cat_OBUF[6]_inst_i_23_n_0\,
      CO(2) => \cat_OBUF[6]_inst_i_23_n_1\,
      CO(1) => \cat_OBUF[6]_inst_i_23_n_2\,
      CO(0) => \cat_OBUF[6]_inst_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => Division_Signal(19 downto 16),
      S(3) => \cat_OBUF[6]_inst_i_45_n_0\,
      S(2) => \cat_OBUF[6]_inst_i_46_n_0\,
      S(1) => \cat_OBUF[6]_inst_i_47_n_0\,
      S(0) => \cat_OBUF[6]_inst_i_48_n_0\
    );
\cat_OBUF[6]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => Division_Signal(1),
      I1 => Division_Signal(0),
      I2 => Division_Signal(17),
      I3 => Result(24),
      I4 => Division_Signal(16),
      I5 => intermediar_reg,
      O => \cat[1]\
    );
\cat_OBUF[6]_inst_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => Division_Signal(9),
      I2 => Result(24),
      I3 => Division_Signal(8),
      I4 => intermediar_reg,
      O => \cat[1]_3\
    );
\cat_OBUF[6]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => Division_Signal(4),
      I1 => Division_Signal(5),
      I2 => intermediar_reg,
      I3 => Division_Signal(20),
      I4 => Result(24),
      I5 => Division_Signal(21),
      O => \cat_OBUF[6]_inst_i_26_n_0\
    );
\cat_OBUF[6]_inst_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => intermediar_reg,
      I1 => Division_Signal(12),
      I2 => Result(24),
      I3 => Division_Signal(13),
      O => \cat_OBUF[6]_inst_i_27_n_0\
    );
\cat_OBUF[6]_inst_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \cat_OBUF[6]_inst_i_49_n_0\,
      I2 => sw_IBUF(1),
      I3 => intermediar_reg_0,
      O => digits(14)
    );
\cat_OBUF[6]_inst_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => sw_IBUF(1),
      I1 => sw_IBUF(0),
      I2 => \cat_OBUF[6]_inst_i_50_n_0\,
      I3 => sw_IBUF(2),
      O => digits(6)
    );
\cat_OBUF[6]_inst_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => sw_IBUF(2),
      I2 => \cat_OBUF[6]_inst_i_52_n_0\,
      I3 => sw_IBUF(1),
      I4 => intermediar_reg_0,
      O => \cat[1]_0\(0)
    );
\cat_OBUF[6]_inst_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => Division_Signal(14),
      I1 => Result(24),
      I2 => Division_Signal(13),
      I3 => intermediar_reg,
      I4 => \sw[2]\,
      O => digits(13)
    );
\cat_OBUF[6]_inst_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00405540"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \cat_OBUF[6]_inst_i_54_n_0\,
      I2 => sw_IBUF(2),
      I3 => sw_IBUF(1),
      I4 => intermediar_reg_0,
      O => digits(5)
    );
\cat_OBUF[6]_inst_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_55_n_0\,
      I1 => sw_IBUF(1),
      I2 => intermediar_reg_0,
      I3 => sw_IBUF(0),
      O => digits(9)
    );
\cat_OBUF[6]_inst_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00405540"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \cat_OBUF[6]_inst_i_56_n_0\,
      I2 => sw_IBUF(2),
      I3 => sw_IBUF(1),
      I4 => intermediar_reg_0,
      O => digits(1)
    );
\cat_OBUF[6]_inst_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \cat_OBUF[6]_inst_i_37_n_0\,
      CO(3) => \cat_OBUF[6]_inst_i_36_n_0\,
      CO(2) => \cat_OBUF[6]_inst_i_36_n_1\,
      CO(1) => \cat_OBUF[6]_inst_i_36_n_2\,
      CO(0) => \cat_OBUF[6]_inst_i_36_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => Division_Signal(7 downto 4),
      S(3) => \cat_OBUF[6]_inst_i_57_n_0\,
      S(2) => \cat_OBUF[6]_inst_i_58_n_0\,
      S(1) => \cat_OBUF[6]_inst_i_59_n_0\,
      S(0) => \cat_OBUF[6]_inst_i_60_n_0\
    );
\cat_OBUF[6]_inst_i_37\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cat_OBUF[6]_inst_i_37_n_0\,
      CO(2) => \cat_OBUF[6]_inst_i_37_n_1\,
      CO(1) => \cat_OBUF[6]_inst_i_37_n_2\,
      CO(0) => \cat_OBUF[6]_inst_i_37_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => L(23),
      O(3 downto 0) => Division_Signal(3 downto 0),
      S(3) => \cat_OBUF[6]_inst_i_61_n_0\,
      S(2) => \cat_OBUF[6]_inst_i_62_n_0\,
      S(1) => \cat_OBUF[6]_inst_i_63_n_0\,
      S(0) => \cat_OBUF[6]_inst_i_64_n_0\
    );
\cat_OBUF[6]_inst_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \cat_OBUF[6]_inst_i_23_n_0\,
      CO(3) => \cat_OBUF[6]_inst_i_38_n_0\,
      CO(2) => \cat_OBUF[6]_inst_i_38_n_1\,
      CO(1) => \cat_OBUF[6]_inst_i_38_n_2\,
      CO(0) => \cat_OBUF[6]_inst_i_38_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => Division_Signal(23 downto 20),
      S(3) => \cat_OBUF[6]_inst_i_65_n_0\,
      S(2) => \cat_OBUF[6]_inst_i_66_n_0\,
      S(1) => \cat_OBUF[6]_inst_i_67_n_0\,
      S(0) => \cat_OBUF[6]_inst_i_68_n_0\
    );
\cat_OBUF[6]_inst_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => \cat_OBUF[6]_inst_i_36_n_0\,
      CO(3) => \cat_OBUF[6]_inst_i_39_n_0\,
      CO(2) => \cat_OBUF[6]_inst_i_39_n_1\,
      CO(1) => \cat_OBUF[6]_inst_i_39_n_2\,
      CO(0) => \cat_OBUF[6]_inst_i_39_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => Division_Signal(11 downto 8),
      S(3) => \cat_OBUF[6]_inst_i_69_n_0\,
      S(2) => \cat_OBUF[6]_inst_i_70_n_0\,
      S(1) => \cat_OBUF[6]_inst_i_71_n_0\,
      S(0) => \cat_OBUF[6]_inst_i_72_n_0\
    );
\cat_OBUF[6]_inst_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(38),
      O => \cat_OBUF[6]_inst_i_40_n_0\
    );
\cat_OBUF[6]_inst_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(37),
      O => \cat_OBUF[6]_inst_i_41_n_0\
    );
\cat_OBUF[6]_inst_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(36),
      O => \cat_OBUF[6]_inst_i_42_n_0\
    );
\cat_OBUF[6]_inst_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(35),
      O => \cat_OBUF[6]_inst_i_43_n_0\
    );
\cat_OBUF[6]_inst_i_44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(47),
      O => \cat_OBUF[6]_inst_i_44_n_0\
    );
\cat_OBUF[6]_inst_i_45\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(42),
      O => \cat_OBUF[6]_inst_i_45_n_0\
    );
\cat_OBUF[6]_inst_i_46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(41),
      O => \cat_OBUF[6]_inst_i_46_n_0\
    );
\cat_OBUF[6]_inst_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(40),
      O => \cat_OBUF[6]_inst_i_47_n_0\
    );
\cat_OBUF[6]_inst_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(39),
      O => \cat_OBUF[6]_inst_i_48_n_0\
    );
\cat_OBUF[6]_inst_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D555DDD"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => intermediar_reg,
      I2 => Division_Signal(15),
      I3 => Result(24),
      I4 => Division_Signal(14),
      O => \cat_OBUF[6]_inst_i_49_n_0\
    );
\cat_OBUF[6]_inst_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cat_OBUF[6]_inst_i_15_n_0\,
      I1 => \cat_OBUF[6]_inst_i_16_n_0\,
      O => \Afisor/mux_out__11\(1),
      S => count_reg(0)
    );
\cat_OBUF[6]_inst_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Division_Signal(7),
      I1 => Division_Signal(6),
      I2 => intermediar_reg,
      I3 => Division_Signal(23),
      I4 => Result(24),
      I5 => Division_Signal(22),
      O => \cat_OBUF[6]_inst_i_50_n_0\
    );
\cat_OBUF[6]_inst_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => Division_Signal(11),
      I2 => Result(24),
      I3 => Division_Signal(10),
      I4 => intermediar_reg,
      O => \cat[1]_4\
    );
\cat_OBUF[6]_inst_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => Division_Signal(3),
      I1 => Division_Signal(2),
      I2 => Division_Signal(19),
      I3 => Result(24),
      I4 => Division_Signal(18),
      I5 => intermediar_reg,
      O => \cat_OBUF[6]_inst_i_52_n_0\
    );
\cat_OBUF[6]_inst_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Division_Signal(6),
      I1 => Division_Signal(5),
      I2 => intermediar_reg,
      I3 => Division_Signal(22),
      I4 => Result(24),
      I5 => Division_Signal(21),
      O => \cat_OBUF[6]_inst_i_54_n_0\
    );
\cat_OBUF[6]_inst_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => Division_Signal(10),
      I2 => Result(24),
      I3 => Division_Signal(9),
      I4 => intermediar_reg,
      O => \cat_OBUF[6]_inst_i_55_n_0\
    );
\cat_OBUF[6]_inst_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => Division_Signal(2),
      I1 => Division_Signal(1),
      I2 => Division_Signal(18),
      I3 => Result(24),
      I4 => Division_Signal(17),
      I5 => intermediar_reg,
      O => \cat_OBUF[6]_inst_i_56_n_0\
    );
\cat_OBUF[6]_inst_i_57\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(30),
      O => \cat_OBUF[6]_inst_i_57_n_0\
    );
\cat_OBUF[6]_inst_i_58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(29),
      O => \cat_OBUF[6]_inst_i_58_n_0\
    );
\cat_OBUF[6]_inst_i_59\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(28),
      O => \cat_OBUF[6]_inst_i_59_n_0\
    );
\cat_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F808FF0FFF0FF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_17_n_0\,
      I1 => sw_IBUF(2),
      I2 => count_reg(1),
      I3 => intermediar_reg_1,
      I4 => \cat_OBUF[6]_inst_i_18_n_0\,
      I5 => \sw[1]\,
      O => \cat_OBUF[6]_inst_i_6_n_0\
    );
\cat_OBUF[6]_inst_i_60\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(27),
      O => \cat_OBUF[6]_inst_i_60_n_0\
    );
\cat_OBUF[6]_inst_i_61\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(26),
      O => \cat_OBUF[6]_inst_i_61_n_0\
    );
\cat_OBUF[6]_inst_i_62\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(25),
      O => \cat_OBUF[6]_inst_i_62_n_0\
    );
\cat_OBUF[6]_inst_i_63\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(24),
      O => \cat_OBUF[6]_inst_i_63_n_0\
    );
\cat_OBUF[6]_inst_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => L(23),
      I1 => \cat_OBUF[6]_inst_i_73_n_0\,
      I2 => data0,
      I3 => sel0(20),
      I4 => sel0(21),
      I5 => \cat_OBUF[6]_inst_i_74_n_0\,
      O => \cat_OBUF[6]_inst_i_64_n_0\
    );
\cat_OBUF[6]_inst_i_65\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(46),
      O => \cat_OBUF[6]_inst_i_65_n_0\
    );
\cat_OBUF[6]_inst_i_66\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(45),
      O => \cat_OBUF[6]_inst_i_66_n_0\
    );
\cat_OBUF[6]_inst_i_67\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(44),
      O => \cat_OBUF[6]_inst_i_67_n_0\
    );
\cat_OBUF[6]_inst_i_68\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(43),
      O => \cat_OBUF[6]_inst_i_68_n_0\
    );
\cat_OBUF[6]_inst_i_69\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(34),
      O => \cat_OBUF[6]_inst_i_69_n_0\
    );
\cat_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \cat_OBUF[6]_inst_i_20_n_0\,
      I2 => sw_IBUF(1),
      I3 => intermediar_reg_0,
      O => digits(7)
    );
\cat_OBUF[6]_inst_i_70\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(33),
      O => \cat_OBUF[6]_inst_i_70_n_0\
    );
\cat_OBUF[6]_inst_i_71\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(32),
      O => \cat_OBUF[6]_inst_i_71_n_0\
    );
\cat_OBUF[6]_inst_i_72\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(31),
      O => \cat_OBUF[6]_inst_i_72_n_0\
    );
\cat_OBUF[6]_inst_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_75_n_0\,
      I1 => sel0(14),
      I2 => sel0(15),
      I3 => sel0(12),
      I4 => sel0(13),
      I5 => \cat_OBUF[6]_inst_i_76_n_0\,
      O => \cat_OBUF[6]_inst_i_73_n_0\
    );
\cat_OBUF[6]_inst_i_74\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(18),
      I1 => sel0(19),
      I2 => sel0(16),
      I3 => sel0(17),
      O => \cat_OBUF[6]_inst_i_74_n_0\
    );
\cat_OBUF[6]_inst_i_75\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      I2 => sel0(8),
      I3 => sel0(9),
      O => \cat_OBUF[6]_inst_i_75_n_0\
    );
\cat_OBUF[6]_inst_i_76\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(7),
      I3 => sel0(6),
      I4 => \cat_OBUF[6]_inst_i_77_n_0\,
      O => \cat_OBUF[6]_inst_i_76_n_0\
    );
\cat_OBUF[6]_inst_i_77\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \cat_OBUF[6]_inst_i_77_n_0\
    );
\cat_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7FFFFFFFFFFFF"
    )
        port map (
      I0 => \sw[1]\,
      I1 => Division_Signal(15),
      I2 => Result(24),
      I3 => Division_Signal(16),
      I4 => intermediar_reg,
      I5 => sw_IBUF(2),
      O => \cat_OBUF[6]_inst_i_9_n_0\
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => Dividend(7),
      DI(2) => Dividend(5),
      DI(1) => '0',
      DI(0) => geqOp_carry_i_1_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_2_n_0,
      S(2) => geqOp_carry_i_3_n_0,
      S(1) => geqOp_carry_i_4_n_0,
      S(0) => geqOp_carry_i_5_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3) => \geqOp_carry__0_n_0\,
      CO(2) => \geqOp_carry__0_n_1\,
      CO(1) => \geqOp_carry__0_n_2\,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__0_i_1_n_0\,
      DI(2) => \geqOp_carry__0_i_2_n_0\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__0_i_3_n_0\,
      S(2) => \geqOp_carry__0_i_4_n_0\,
      S(1) => \geqOp_carry__0_i_5_n_0\,
      S(0) => \geqOp_carry__0_i_6_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(14),
      I1 => Dividend(15),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(12),
      I1 => Dividend(13),
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(15),
      I1 => Dividend(14),
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(12),
      I1 => Dividend(13),
      O => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(10),
      I1 => Dividend(11),
      O => \geqOp_carry__0_i_5_n_0\
    );
\geqOp_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(8),
      I1 => Dividend(9),
      O => \geqOp_carry__0_i_6_n_0\
    );
\geqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__0_n_0\,
      CO(3) => \geqOp_carry__1_n_0\,
      CO(2) => \geqOp_carry__1_n_1\,
      CO(1) => \geqOp_carry__1_n_2\,
      CO(0) => \geqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \geqOp_carry__1_i_1_n_0\,
      DI(0) => \geqOp_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__1_i_3_n_0\,
      S(2) => \geqOp_carry__1_i_4_n_0\,
      S(1) => \geqOp_carry__1_i_5_n_0\,
      S(0) => \geqOp_carry__1_i_6_n_0\
    );
\geqOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(18),
      I1 => Dividend(19),
      O => \geqOp_carry__1_i_1_n_0\
    );
\geqOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(16),
      I1 => Dividend(17),
      O => \geqOp_carry__1_i_2_n_0\
    );
\geqOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(22),
      I1 => Dividend(23),
      O => \geqOp_carry__1_i_3_n_0\
    );
\geqOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(20),
      I1 => Dividend(21),
      O => \geqOp_carry__1_i_4_n_0\
    );
\geqOp_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(19),
      I1 => Dividend(18),
      O => \geqOp_carry__1_i_5_n_0\
    );
\geqOp_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(17),
      I1 => Dividend(16),
      O => \geqOp_carry__1_i_6_n_0\
    );
\geqOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__1_n_0\,
      CO(3) => \geqOp_carry__2_n_0\,
      CO(2) => \geqOp_carry__2_n_1\,
      CO(1) => \geqOp_carry__2_n_2\,
      CO(0) => \geqOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__2_i_1_n_0\,
      DI(2) => \geqOp_carry__2_i_2_n_0\,
      DI(1) => \geqOp_carry__2_i_3_n_0\,
      DI(0) => \geqOp_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__2_i_5_n_0\,
      S(2) => \geqOp_carry__2_i_6_n_0\,
      S(1) => \geqOp_carry__2_i_7_n_0\,
      S(0) => \geqOp_carry__2_i_8_n_0\
    );
\geqOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(30),
      I1 => Dividend(31),
      O => \geqOp_carry__2_i_1_n_0\
    );
\geqOp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(28),
      I1 => Dividend(29),
      O => \geqOp_carry__2_i_2_n_0\
    );
\geqOp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(26),
      I1 => Dividend(27),
      O => \geqOp_carry__2_i_3_n_0\
    );
\geqOp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(24),
      I1 => Dividend(25),
      O => \geqOp_carry__2_i_4_n_0\
    );
\geqOp_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(30),
      I1 => Dividend(31),
      O => \geqOp_carry__2_i_5_n_0\
    );
\geqOp_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(28),
      I1 => Dividend(29),
      O => \geqOp_carry__2_i_6_n_0\
    );
\geqOp_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(26),
      I1 => Dividend(27),
      O => \geqOp_carry__2_i_7_n_0\
    );
\geqOp_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(24),
      I1 => Dividend(25),
      O => \geqOp_carry__2_i_8_n_0\
    );
\geqOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__2_n_0\,
      CO(3) => \geqOp_carry__3_n_0\,
      CO(2) => \geqOp_carry__3_n_1\,
      CO(1) => \geqOp_carry__3_n_2\,
      CO(0) => \geqOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__3_i_1_n_0\,
      DI(2) => \geqOp_carry__3_i_2_n_0\,
      DI(1) => \geqOp_carry__3_i_3_n_0\,
      DI(0) => \geqOp_carry__3_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__3_i_5_n_0\,
      S(2) => \geqOp_carry__3_i_6_n_0\,
      S(1) => \geqOp_carry__3_i_7_n_0\,
      S(0) => \geqOp_carry__3_i_8_n_0\
    );
\geqOp_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(38),
      I1 => Dividend(39),
      O => \geqOp_carry__3_i_1_n_0\
    );
\geqOp_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(36),
      I1 => Dividend(37),
      O => \geqOp_carry__3_i_2_n_0\
    );
\geqOp_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(34),
      I1 => Dividend(35),
      O => \geqOp_carry__3_i_3_n_0\
    );
\geqOp_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(32),
      I1 => Dividend(33),
      O => \geqOp_carry__3_i_4_n_0\
    );
\geqOp_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(38),
      I1 => Dividend(39),
      O => \geqOp_carry__3_i_5_n_0\
    );
\geqOp_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(36),
      I1 => Dividend(37),
      O => \geqOp_carry__3_i_6_n_0\
    );
\geqOp_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(34),
      I1 => Dividend(35),
      O => \geqOp_carry__3_i_7_n_0\
    );
\geqOp_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(32),
      I1 => Dividend(33),
      O => \geqOp_carry__3_i_8_n_0\
    );
\geqOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__3_n_0\,
      CO(3) => geqOp,
      CO(2) => \geqOp_carry__4_n_1\,
      CO(1) => \geqOp_carry__4_n_2\,
      CO(0) => \geqOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__4_i_1_n_0\,
      DI(2) => \geqOp_carry__4_i_2_n_0\,
      DI(1) => \geqOp_carry__4_i_3_n_0\,
      DI(0) => \geqOp_carry__4_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__4_i_5_n_0\,
      S(2) => \geqOp_carry__4_i_6_n_0\,
      S(1) => \geqOp_carry__4_i_7_n_0\,
      S(0) => \geqOp_carry__4_i_8_n_0\
    );
\geqOp_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(46),
      I1 => Dividend(47),
      O => \geqOp_carry__4_i_1_n_0\
    );
\geqOp_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(44),
      I1 => Dividend(45),
      O => \geqOp_carry__4_i_2_n_0\
    );
\geqOp_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(42),
      I1 => Dividend(43),
      O => \geqOp_carry__4_i_3_n_0\
    );
\geqOp_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(40),
      I1 => Dividend(41),
      O => \geqOp_carry__4_i_4_n_0\
    );
\geqOp_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(46),
      I1 => Dividend(47),
      O => \geqOp_carry__4_i_5_n_0\
    );
\geqOp_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(44),
      I1 => Dividend(45),
      O => \geqOp_carry__4_i_6_n_0\
    );
\geqOp_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(42),
      I1 => Dividend(43),
      O => \geqOp_carry__4_i_7_n_0\
    );
\geqOp_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(40),
      I1 => Dividend(41),
      O => \geqOp_carry__4_i_8_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Dividend(0),
      I1 => Dividend(1),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(6),
      I1 => Dividend(7),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Dividend(4),
      I1 => Dividend(5),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dividend(2),
      I1 => Dividend(3),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Dividend(0),
      I1 => Dividend(1),
      O => geqOp_carry_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MPG is
  port (
    eqOp : out STD_LOGIC;
    Q2 : out STD_LOGIC;
    Q3 : out STD_LOGIC;
    count_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cat[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    an_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dividend_reg[47]\ : out STD_LOGIC;
    Finish_Signal_reg : out STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \count_int_reg[15]_0\ : in STD_LOGIC;
    digits : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Finish_Signal : in STD_LOGIC
  );
end MPG;

architecture STRUCTURE of MPG is
  signal \Afisor/count_reg__0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Q1 : STD_LOGIC;
  signal Q1_i_2_n_0 : STD_LOGIC;
  signal Q1_i_3_n_0 : STD_LOGIC;
  signal Q1_i_4_n_0 : STD_LOGIC;
  signal \^q2\ : STD_LOGIC;
  signal \^q3\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_14_n_0\ : STD_LOGIC;
  signal \count_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_int[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_int[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_int[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_int[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_int[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_int[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_int[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_int_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_int_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_int_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_int_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^count_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^eqop\ : STD_LOGIC;
  signal \NLW_count_int_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Dividend[47]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \Res_Sig[47]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \an_OBUF[0]_inst_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \an_OBUF[1]_inst_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \an_OBUF[2]_inst_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \an_OBUF[3]_inst_i_1\ : label is "soft_lutpair37";
begin
  Q2 <= \^q2\;
  Q3 <= \^q3\;
  count_reg(1 downto 0) <= \^count_reg\(1 downto 0);
  eqOp <= \^eqop\;
\Dividend[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^q3\,
      I1 => \^q2\,
      I2 => Finish_Signal,
      O => \Dividend_reg[47]\
    );
Q1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => Q1_i_2_n_0,
      I1 => \Afisor/count_reg__0\(13),
      I2 => \Afisor/count_reg__0\(12),
      I3 => \^count_reg\(0),
      I4 => \^count_reg\(1),
      I5 => Q1_i_3_n_0,
      O => \^eqop\
    );
Q1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Afisor/count_reg__0\(9),
      I1 => \Afisor/count_reg__0\(8),
      I2 => \Afisor/count_reg__0\(11),
      I3 => \Afisor/count_reg__0\(10),
      O => Q1_i_2_n_0
    );
Q1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \Afisor/count_reg__0\(2),
      I1 => \Afisor/count_reg__0\(3),
      I2 => \Afisor/count_reg__0\(0),
      I3 => \Afisor/count_reg__0\(1),
      I4 => Q1_i_4_n_0,
      O => Q1_i_3_n_0
    );
Q1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Afisor/count_reg__0\(5),
      I1 => \Afisor/count_reg__0\(4),
      I2 => \Afisor/count_reg__0\(7),
      I3 => \Afisor/count_reg__0\(6),
      O => Q1_i_4_n_0
    );
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^eqop\,
      D => btn_IBUF(0),
      Q => Q1,
      R => '0'
    );
Q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q1,
      Q => \^q2\,
      R => '0'
    );
Q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^q2\,
      Q => \^q3\,
      R => '0'
    );
\Res_Sig[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q2\,
      I1 => \^q3\,
      O => Finish_Signal_reg
    );
\an_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => \^count_reg\(1),
      O => an_OBUF(0)
    );
\an_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_reg\(1),
      I1 => \^count_reg\(0),
      O => an_OBUF(1)
    );
\an_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => \^count_reg\(1),
      O => an_OBUF(2)
    );
\an_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => \^count_reg\(1),
      O => an_OBUF(3)
    );
\cat_OBUF[6]_inst_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => digits(1),
      I1 => digits(0),
      O => \cat_OBUF[6]_inst_i_14_n_0\,
      S => \^count_reg\(1)
    );
\cat_OBUF[6]_inst_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_int_reg[15]_0\,
      I1 => \cat_OBUF[6]_inst_i_14_n_0\,
      O => \cat[1]\(0),
      S => \^count_reg\(0)
    );
\count_int[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(3),
      O => \count_int[0]_i_2_n_0\
    );
\count_int[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(2),
      O => \count_int[0]_i_3_n_0\
    );
\count_int[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(1),
      O => \count_int[0]_i_4_n_0\
    );
\count_int[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Afisor/count_reg__0\(0),
      O => \count_int[0]_i_5_n_0\
    );
\count_int[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(1),
      O => \count_int[12]_i_2_n_0\
    );
\count_int[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(0),
      O => \count_int[12]_i_3_n_0\
    );
\count_int[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(13),
      O => \count_int[12]_i_4_n_0\
    );
\count_int[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(12),
      O => \count_int[12]_i_5_n_0\
    );
\count_int[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(7),
      O => \count_int[4]_i_2_n_0\
    );
\count_int[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(6),
      O => \count_int[4]_i_3_n_0\
    );
\count_int[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(5),
      O => \count_int[4]_i_4_n_0\
    );
\count_int[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(4),
      O => \count_int[4]_i_5_n_0\
    );
\count_int[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(11),
      O => \count_int[8]_i_2_n_0\
    );
\count_int[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(10),
      O => \count_int[8]_i_3_n_0\
    );
\count_int[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(9),
      O => \count_int[8]_i_4_n_0\
    );
\count_int[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Afisor/count_reg__0\(8),
      O => \count_int[8]_i_5_n_0\
    );
\count_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[0]_i_1_n_7\,
      Q => \Afisor/count_reg__0\(0),
      R => '0'
    );
\count_int_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_int_reg[0]_i_1_n_0\,
      CO(2) => \count_int_reg[0]_i_1_n_1\,
      CO(1) => \count_int_reg[0]_i_1_n_2\,
      CO(0) => \count_int_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_int_reg[0]_i_1_n_4\,
      O(2) => \count_int_reg[0]_i_1_n_5\,
      O(1) => \count_int_reg[0]_i_1_n_6\,
      O(0) => \count_int_reg[0]_i_1_n_7\,
      S(3) => \count_int[0]_i_2_n_0\,
      S(2) => \count_int[0]_i_3_n_0\,
      S(1) => \count_int[0]_i_4_n_0\,
      S(0) => \count_int[0]_i_5_n_0\
    );
\count_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[8]_i_1_n_5\,
      Q => \Afisor/count_reg__0\(10),
      R => '0'
    );
\count_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[8]_i_1_n_4\,
      Q => \Afisor/count_reg__0\(11),
      R => '0'
    );
\count_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[12]_i_1_n_7\,
      Q => \Afisor/count_reg__0\(12),
      R => '0'
    );
\count_int_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_int_reg[8]_i_1_n_0\,
      CO(3) => \NLW_count_int_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_int_reg[12]_i_1_n_1\,
      CO(1) => \count_int_reg[12]_i_1_n_2\,
      CO(0) => \count_int_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_int_reg[12]_i_1_n_4\,
      O(2) => \count_int_reg[12]_i_1_n_5\,
      O(1) => \count_int_reg[12]_i_1_n_6\,
      O(0) => \count_int_reg[12]_i_1_n_7\,
      S(3) => \count_int[12]_i_2_n_0\,
      S(2) => \count_int[12]_i_3_n_0\,
      S(1) => \count_int[12]_i_4_n_0\,
      S(0) => \count_int[12]_i_5_n_0\
    );
\count_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[12]_i_1_n_6\,
      Q => \Afisor/count_reg__0\(13),
      R => '0'
    );
\count_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[12]_i_1_n_5\,
      Q => \^count_reg\(0),
      R => '0'
    );
\count_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[12]_i_1_n_4\,
      Q => \^count_reg\(1),
      R => '0'
    );
\count_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[0]_i_1_n_6\,
      Q => \Afisor/count_reg__0\(1),
      R => '0'
    );
\count_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[0]_i_1_n_5\,
      Q => \Afisor/count_reg__0\(2),
      R => '0'
    );
\count_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[0]_i_1_n_4\,
      Q => \Afisor/count_reg__0\(3),
      R => '0'
    );
\count_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[4]_i_1_n_7\,
      Q => \Afisor/count_reg__0\(4),
      R => '0'
    );
\count_int_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_int_reg[0]_i_1_n_0\,
      CO(3) => \count_int_reg[4]_i_1_n_0\,
      CO(2) => \count_int_reg[4]_i_1_n_1\,
      CO(1) => \count_int_reg[4]_i_1_n_2\,
      CO(0) => \count_int_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_int_reg[4]_i_1_n_4\,
      O(2) => \count_int_reg[4]_i_1_n_5\,
      O(1) => \count_int_reg[4]_i_1_n_6\,
      O(0) => \count_int_reg[4]_i_1_n_7\,
      S(3) => \count_int[4]_i_2_n_0\,
      S(2) => \count_int[4]_i_3_n_0\,
      S(1) => \count_int[4]_i_4_n_0\,
      S(0) => \count_int[4]_i_5_n_0\
    );
\count_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[4]_i_1_n_6\,
      Q => \Afisor/count_reg__0\(5),
      R => '0'
    );
\count_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[4]_i_1_n_5\,
      Q => \Afisor/count_reg__0\(6),
      R => '0'
    );
\count_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[4]_i_1_n_4\,
      Q => \Afisor/count_reg__0\(7),
      R => '0'
    );
\count_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[8]_i_1_n_7\,
      Q => \Afisor/count_reg__0\(8),
      R => '0'
    );
\count_int_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_int_reg[4]_i_1_n_0\,
      CO(3) => \count_int_reg[8]_i_1_n_0\,
      CO(2) => \count_int_reg[8]_i_1_n_1\,
      CO(1) => \count_int_reg[8]_i_1_n_2\,
      CO(0) => \count_int_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_int_reg[8]_i_1_n_4\,
      O(2) => \count_int_reg[8]_i_1_n_5\,
      O(1) => \count_int_reg[8]_i_1_n_6\,
      O(0) => \count_int_reg[8]_i_1_n_7\,
      S(3) => \count_int[8]_i_2_n_0\,
      S(2) => \count_int[8]_i_3_n_0\,
      S(1) => \count_int[8]_i_4_n_0\,
      S(0) => \count_int[8]_i_5_n_0\
    );
\count_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_int_reg[8]_i_1_n_6\,
      Q => \Afisor/count_reg__0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MPG_2 is
  port (
    intermediar_reg : out STD_LOGIC;
    eqOp : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    intermediar_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MPG_2 : entity is "MPG";
end MPG_2;

architecture STRUCTURE of MPG_2 is
  signal Q1_reg_n_0 : STD_LOGIC;
  signal Q2 : STD_LOGIC;
  signal Q3 : STD_LOGIC;
begin
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => eqOp,
      D => btn_IBUF(0),
      Q => Q1_reg_n_0,
      R => '0'
    );
Q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q1_reg_n_0,
      Q => Q2,
      R => '0'
    );
Q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q2,
      Q => Q3,
      R => '0'
    );
intermediar_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => Q3,
      I1 => Q2,
      I2 => intermediar_reg_0,
      O => intermediar_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MPG_3 is
  port (
    intermediar_reg : out STD_LOGIC;
    eqOp : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    intermediar : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MPG_3 : entity is "MPG";
end MPG_3;

architecture STRUCTURE of MPG_3 is
  signal Q1_reg_n_0 : STD_LOGIC;
  signal Q2 : STD_LOGIC;
  signal Q3 : STD_LOGIC;
begin
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => eqOp,
      D => btn_IBUF(0),
      Q => Q1_reg_n_0,
      R => '0'
    );
Q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q1_reg_n_0,
      Q => Q2,
      R => '0'
    );
Q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q2,
      Q => Q3,
      R => '0'
    );
\intermediar_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => Q3,
      I1 => Q2,
      I2 => intermediar,
      O => intermediar_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MPG_4 is
  port (
    intermediar_reg : out STD_LOGIC;
    eqOp : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    intermediar_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MPG_4 : entity is "MPG";
end MPG_4;

architecture STRUCTURE of MPG_4 is
  signal Q1_reg_n_0 : STD_LOGIC;
  signal Q2 : STD_LOGIC;
  signal Q3 : STD_LOGIC;
begin
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => eqOp,
      D => btn_IBUF(0),
      Q => Q1_reg_n_0,
      R => '0'
    );
Q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q1_reg_n_0,
      Q => Q2,
      R => '0'
    );
Q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q2,
      Q => Q3,
      R => '0'
    );
\intermediar_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => Q3,
      I1 => Q2,
      I2 => intermediar_reg_0,
      O => intermediar_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPU_Division is
  port (
    Finish_Signal : out STD_LOGIC;
    cat_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \cat[1]\ : out STD_LOGIC;
    \cat[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cat[1]_1\ : out STD_LOGIC;
    \cat[1]_2\ : out STD_LOGIC;
    \cat[1]_3\ : out STD_LOGIC;
    \cat[1]_4\ : out STD_LOGIC;
    Q2_reg : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \count_int_reg[14]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    intermediar_reg : in STD_LOGIC;
    count_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    intermediar_reg_0 : in STD_LOGIC;
    intermediar_reg_1 : in STD_LOGIC;
    \sw[1]\ : in STD_LOGIC;
    \sw[2]\ : in STD_LOGIC;
    Q3_reg : in STD_LOGIC;
    Q3 : in STD_LOGIC;
    Q2 : in STD_LOGIC
  );
end FPU_Division;

architecture STRUCTURE of FPU_Division is
begin
Division: entity work.Divider
     port map (
      \Count_reg[0]_0\ => Finish_Signal,
      Q2 => Q2,
      Q2_reg => Q2_reg,
      Q3 => Q3,
      Q3_reg => Q3_reg,
      \cat[1]\ => \cat[1]\,
      \cat[1]_0\(0) => \cat[1]_0\(0),
      \cat[1]_1\ => \cat[1]_1\,
      \cat[1]_2\ => \cat[1]_2\,
      \cat[1]_3\ => \cat[1]_3\,
      \cat[1]_4\ => \cat[1]_4\,
      cat_OBUF(6 downto 0) => cat_OBUF(6 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \count_int_reg[14]\(1 downto 0) => \count_int_reg[14]\(1 downto 0),
      count_reg(1 downto 0) => count_reg(1 downto 0),
      intermediar_reg => intermediar_reg,
      intermediar_reg_0 => intermediar_reg_0,
      intermediar_reg_1 => intermediar_reg_1,
      \sw[1]\ => \sw[1]\,
      \sw[2]\ => \sw[2]\,
      sw_IBUF(2 downto 0) => sw_IBUF(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Control_Unit is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Control_Unit : entity is true;
end Control_Unit;

architecture STRUCTURE of Control_Unit is
  signal \Afisor/count_reg\ : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal \Afisor/mux_out__11\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal FPU_Unit_n_10 : STD_LOGIC;
  signal FPU_Unit_n_11 : STD_LOGIC;
  signal FPU_Unit_n_12 : STD_LOGIC;
  signal FPU_Unit_n_13 : STD_LOGIC;
  signal FPU_Unit_n_8 : STD_LOGIC;
  signal Finish_Signal : STD_LOGIC;
  signal Q2 : STD_LOGIC;
  signal Q3 : STD_LOGIC;
  signal SEL_AB_n_2 : STD_LOGIC;
  signal SEL_B_n_0 : STD_LOGIC;
  signal SEL_REZ_n_0 : STD_LOGIC;
  signal Start_btn_n_10 : STD_LOGIC;
  signal Start_btn_n_11 : STD_LOGIC;
  signal an_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bt_sel_n_0 : STD_LOGIC;
  signal btn1_btn_n_0 : STD_LOGIC;
  signal btn2_btn_n_0 : STD_LOGIC;
  signal btn_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal cat_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cat_OBUF[6]_inst_i_19_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_53_n_0\ : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal digits : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal eqOp : STD_LOGIC;
  signal intermediar : STD_LOGIC;
  signal sw_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cat_OBUF[6]_inst_i_19\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cat_OBUF[6]_inst_i_53\ : label is "soft_lutpair39";
begin
FPU_Unit: entity work.FPU_Division
     port map (
      Finish_Signal => Finish_Signal,
      Q2 => Q2,
      Q2_reg => Start_btn_n_11,
      Q3 => Q3,
      Q3_reg => Start_btn_n_10,
      \cat[1]\ => FPU_Unit_n_8,
      \cat[1]_0\(0) => digits(2),
      \cat[1]_1\ => FPU_Unit_n_10,
      \cat[1]_2\ => FPU_Unit_n_11,
      \cat[1]_3\ => FPU_Unit_n_12,
      \cat[1]_4\ => FPU_Unit_n_13,
      cat_OBUF(6 downto 0) => cat_OBUF(6 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \count_int_reg[14]\(1) => \Afisor/mux_out__11\(2),
      \count_int_reg[14]\(0) => \Afisor/mux_out__11\(0),
      count_reg(1 downto 0) => \Afisor/count_reg\(15 downto 14),
      intermediar_reg => SEL_REZ_n_0,
      intermediar_reg_0 => SEL_B_n_0,
      intermediar_reg_1 => SEL_AB_n_2,
      \sw[1]\ => \cat_OBUF[6]_inst_i_19_n_0\,
      \sw[2]\ => \cat_OBUF[6]_inst_i_53_n_0\,
      sw_IBUF(2 downto 0) => sw_IBUF(2 downto 0)
    );
SEL_AB: entity work.Counter
     port map (
      Q3_reg => btn1_btn_n_0,
      \cat[1]\(0) => \Afisor/mux_out__11\(0),
      \cat[1]_0\ => SEL_AB_n_2,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \count_int_reg[15]\ => FPU_Unit_n_10,
      count_reg(1 downto 0) => \Afisor/count_reg\(15 downto 14),
      intermediar => intermediar,
      intermediar_reg_0 => FPU_Unit_n_8,
      intermediar_reg_1 => SEL_B_n_0,
      intermediar_reg_2 => FPU_Unit_n_12,
      sw_IBUF(2 downto 0) => sw_IBUF(2 downto 0)
    );
SEL_B: entity work.Counter_0
     port map (
      Q3_reg => btn2_btn_n_0,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      digits(0) => digits(10),
      intermediar => intermediar,
      intermediar_reg_0 => SEL_B_n_0,
      intermediar_reg_1 => FPU_Unit_n_13,
      sw_IBUF(1 downto 0) => sw_IBUF(1 downto 0)
    );
SEL_REZ: entity work.Counter_1
     port map (
      Q3_reg => bt_sel_n_0,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      intermediar_reg_0 => SEL_REZ_n_0
    );
Start_btn: entity work.MPG
     port map (
      \Dividend_reg[47]\ => Start_btn_n_10,
      Finish_Signal => Finish_Signal,
      Finish_Signal_reg => Start_btn_n_11,
      Q2 => Q2,
      Q3 => Q3,
      an_OBUF(3 downto 0) => an_OBUF(3 downto 0),
      btn_IBUF(0) => btn_IBUF(4),
      \cat[1]\(0) => \Afisor/mux_out__11\(2),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \count_int_reg[15]_0\ => FPU_Unit_n_11,
      count_reg(1 downto 0) => \Afisor/count_reg\(15 downto 14),
      digits(1) => digits(10),
      digits(0) => digits(2),
      eqOp => eqOp
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(3),
      O => an(3)
    );
bt_sel: entity work.MPG_2
     port map (
      btn_IBUF(0) => btn_IBUF(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      eqOp => eqOp,
      intermediar_reg => bt_sel_n_0,
      intermediar_reg_0 => SEL_REZ_n_0
    );
btn1_btn: entity work.MPG_3
     port map (
      btn_IBUF(0) => btn_IBUF(3),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      eqOp => eqOp,
      intermediar => intermediar,
      intermediar_reg => btn1_btn_n_0
    );
btn2_btn: entity work.MPG_4
     port map (
      btn_IBUF(0) => btn_IBUF(2),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      eqOp => eqOp,
      intermediar_reg => btn2_btn_n_0,
      intermediar_reg_0 => SEL_B_n_0
    );
\btn_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(0),
      O => btn_IBUF(0)
    );
\btn_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(2),
      O => btn_IBUF(2)
    );
\btn_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(3),
      O => btn_IBUF(3)
    );
\btn_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(4),
      O => btn_IBUF(4)
    );
\cat_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(0),
      O => cat(0)
    );
\cat_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(1),
      O => cat(1)
    );
\cat_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(2),
      O => cat(2)
    );
\cat_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(3),
      O => cat(3)
    );
\cat_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(4),
      O => cat(4)
    );
\cat_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(5),
      O => cat(5)
    );
\cat_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(6),
      O => cat(6)
    );
\cat_OBUF[6]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_19_n_0\
    );
\cat_OBUF[6]_inst_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sw_IBUF(1),
      I1 => sw_IBUF(0),
      I2 => sw_IBUF(2),
      O => \cat_OBUF[6]_inst_i_53_n_0\
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(0),
      T => '1'
    );
\led_OBUF[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(10),
      T => '1'
    );
\led_OBUF[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(11),
      T => '1'
    );
\led_OBUF[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(12),
      T => '1'
    );
\led_OBUF[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(13),
      T => '1'
    );
\led_OBUF[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(14),
      T => '1'
    );
\led_OBUF[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(15),
      T => '1'
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(1),
      T => '1'
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(2),
      T => '1'
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(3),
      T => '1'
    );
\led_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(4),
      T => '1'
    );
\led_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(5),
      T => '1'
    );
\led_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(6),
      T => '1'
    );
\led_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(7),
      T => '1'
    );
\led_OBUF[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(8),
      T => '1'
    );
\led_OBUF[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(9),
      T => '1'
    );
\sw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(0),
      O => sw_IBUF(0)
    );
\sw_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(1),
      O => sw_IBUF(1)
    );
\sw_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(2),
      O => sw_IBUF(2)
    );
end STRUCTURE;
