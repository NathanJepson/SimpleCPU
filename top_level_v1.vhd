--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_level_v1.vhf
-- /___/   /\     Timestamp : 12/28/2020 23:34:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl /home/ubuntu/Documents/simpleCPU_v1/simpleCPU/top_level_v1.vhf -w /home/ubuntu/Documents/simpleCPU_v1/simpleCPU/top_level_v1.sch
--Design Name: top_level_v1
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND8_MXILINX_top_level_v1 is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end AND8_MXILINX_top_level_v1;

architecture BEHAVIORAL of AND8_MXILINX_top_level_v1 is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_29 : label is "X0Y0";
   attribute RLOC of I_36_138 : label is "X0Y0";
   attribute RLOC of I_36_152 : label is "X0Y1";
begin
   O <= O_DUMMY;
   I_36_29 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_138 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_142 : AND2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_152 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity instruction_decoder_MUSER_top_level_v1 is
   port ( A      : in    std_logic_vector (7 downto 0); 
          ADD    : out   std_logic; 
          BITAND : out   std_logic; 
          INPUT  : out   std_logic; 
          JUMP   : out   std_logic; 
          JUMPC  : out   std_logic; 
          JUMPNC : out   std_logic; 
          JUMPNZ : out   std_logic; 
          JUMPZ  : out   std_logic; 
          LOAD   : out   std_logic; 
          OUTPUT : out   std_logic; 
          SUB    : out   std_logic);
end instruction_decoder_MUSER_top_level_v1;

architecture BEHAVIORAL of instruction_decoder_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   signal JUMP_CONDITION : std_logic;
   signal XLXN_3         : std_logic;
   signal XLXN_6         : std_logic;
   signal XLXN_10        : std_logic;
   signal XLXN_16        : std_logic;
   signal XLXN_17        : std_logic;
   signal XLXN_18        : std_logic;
   signal XLXN_19        : std_logic;
   signal XLXN_111       : std_logic;
   signal XLXN_112       : std_logic;
   signal XLXN_119       : std_logic;
   signal XLXN_120       : std_logic;
   signal XLXN_121       : std_logic;
   signal XLXN_162       : std_logic;
   signal XLXN_163       : std_logic;
   signal XLXN_164       : std_logic;
   signal XLXN_165       : std_logic;
   signal XLXN_181       : std_logic;
   signal XLXN_190       : std_logic;
   signal XLXN_191       : std_logic;
   signal XLXN_194       : std_logic;
   signal XLXN_195       : std_logic;
   signal XLXN_200       : std_logic;
   signal XLXN_201       : std_logic;
   signal XLXN_203       : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND4
      port map (I0=>XLXN_6,
                I1=>A(5),
                I2=>XLXN_3,
                I3=>A(7),
                O=>INPUT);
   
   XLXI_2 : INV
      port map (I=>A(6),
                O=>XLXN_3);
   
   XLXI_3 : INV
      port map (I=>A(4),
                O=>XLXN_6);
   
   XLXI_4 : AND4
      port map (I0=>XLXN_10,
                I1=>A(5),
                I2=>A(6),
                I3=>A(7),
                O=>OUTPUT);
   
   XLXI_6 : INV
      port map (I=>A(4),
                O=>XLXN_10);
   
   XLXI_7 : AND4
      port map (I0=>XLXN_19,
                I1=>XLXN_18,
                I2=>XLXN_17,
                I3=>XLXN_16,
                O=>LOAD);
   
   XLXI_8 : INV
      port map (I=>A(6),
                O=>XLXN_17);
   
   XLXI_9 : INV
      port map (I=>A(4),
                O=>XLXN_19);
   
   XLXI_10 : INV
      port map (I=>A(5),
                O=>XLXN_18);
   
   XLXI_11 : INV
      port map (I=>A(7),
                O=>XLXN_16);
   
   XLXI_12 : AND4
      port map (I0=>XLXN_200,
                I1=>XLXN_201,
                I2=>A(6),
                I3=>XLXN_203,
                O=>ADD);
   
   XLXI_21 : AND3
      port map (I0=>A(2),
                I1=>XLXN_164,
                I2=>JUMP_CONDITION,
                O=>JUMPNZ);
   
   XLXI_22 : AND3
      port map (I0=>XLXN_165,
                I1=>A(3),
                I2=>JUMP_CONDITION,
                O=>JUMPC);
   
   XLXI_23 : AND3
      port map (I0=>A(2),
                I1=>A(3),
                I2=>JUMP_CONDITION,
                O=>JUMPNC);
   
   XLXI_24 : AND3
      port map (I0=>XLXN_112,
                I1=>XLXN_111,
                I2=>JUMP_CONDITION,
                O=>JUMPZ);
   
   XLXI_36 : AND4
      port map (I0=>A(4),
                I1=>XLXN_163,
                I2=>XLXN_162,
                I3=>A(7),
                O=>JUMP_CONDITION);
   
   XLXI_71 : INV
      port map (I=>A(3),
                O=>XLXN_111);
   
   XLXI_75 : INV
      port map (I=>A(2),
                O=>XLXN_112);
   
   XLXI_77 : INV
      port map (I=>A(5),
                O=>XLXN_120);
   
   XLXI_78 : INV
      port map (I=>A(4),
                O=>XLXN_119);
   
   XLXI_79 : INV
      port map (I=>A(6),
                O=>XLXN_121);
   
   XLXI_80 : AND4
      port map (I0=>XLXN_119,
                I1=>XLXN_120,
                I2=>XLXN_121,
                I3=>A(7),
                O=>JUMP);
   
   XLXI_99 : INV
      port map (I=>A(6),
                O=>XLXN_162);
   
   XLXI_100 : INV
      port map (I=>A(5),
                O=>XLXN_163);
   
   XLXI_101 : INV
      port map (I=>A(3),
                O=>XLXN_164);
   
   XLXI_102 : INV
      port map (I=>A(2),
                O=>XLXN_165);
   
   XLXI_108 : INV
      port map (I=>A(4),
                O=>XLXN_181);
   
   XLXI_110 : AND4
      port map (I0=>XLXN_181,
                I1=>A(5),
                I2=>A(6),
                I3=>XLXN_194,
                O=>SUB);
   
   XLXI_111 : INV
      port map (I=>A(5),
                O=>XLXN_190);
   
   XLXI_113 : INV
      port map (I=>A(6),
                O=>XLXN_191);
   
   XLXI_114 : AND4
      port map (I0=>A(4),
                I1=>XLXN_190,
                I2=>XLXN_191,
                I3=>XLXN_195,
                O=>BITAND);
   
   XLXI_115 : INV
      port map (I=>A(7),
                O=>XLXN_194);
   
   XLXI_116 : INV
      port map (I=>A(7),
                O=>XLXN_195);
   
   XLXI_117 : INV
      port map (I=>A(7),
                O=>XLXN_203);
   
   XLXI_118 : INV
      port map (I=>A(5),
                O=>XLXN_201);
   
   XLXI_119 : INV
      port map (I=>A(4),
                O=>XLXN_200);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity register_2bit_MUSER_top_level_v1 is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          DI0 : in    std_logic; 
          DI1 : in    std_logic; 
          DO0 : out   std_logic; 
          DO1 : out   std_logic);
end register_2bit_MUSER_top_level_v1;

architecture BEHAVIORAL of register_2bit_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>DI0,
                Q=>DO0);
   
   XLXI_2 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>DI1,
                Q=>DO1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sequence_generator_MUSER_top_level_v1 is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          D   : out   std_logic; 
          E   : out   std_logic; 
          F   : out   std_logic; 
          I   : out   std_logic);
end sequence_generator_MUSER_top_level_v1;

architecture BEHAVIORAL of sequence_generator_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   signal D_DUMMY : std_logic;
   signal E_DUMMY : std_logic;
   signal F_DUMMY : std_logic;
   signal I_DUMMY : std_logic;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component FDPE
      generic( INIT : bit :=  '1');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDPE : component is "BLACK_BOX";
   
begin
   D <= D_DUMMY;
   E <= E_DUMMY;
   F <= F_DUMMY;
   I <= I_DUMMY;
   XLXI_2 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>F_DUMMY,
                Q=>D_DUMMY);
   
   XLXI_3 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>D_DUMMY,
                Q=>E_DUMMY);
   
   XLXI_4 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>E_DUMMY,
                Q=>I_DUMMY);
   
   XLXI_17 : FDPE
      port map (C=>CLK,
                CE=>CE,
                D=>I_DUMMY,
                PRE=>CLR,
                Q=>F_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity decoder_MUSER_top_level_v1 is
   port ( Carry  : in    std_logic; 
          CE     : in    std_logic; 
          CLK    : in    std_logic; 
          CLR    : in    std_logic; 
          IR     : in    std_logic_vector (7 downto 0); 
          Zero   : in    std_logic; 
          ALU_S0 : out   std_logic; 
          ALU_S1 : out   std_logic; 
          ALU_S2 : out   std_logic; 
          ALU_S3 : out   std_logic; 
          ALU_S4 : out   std_logic; 
          EN_DA  : out   std_logic; 
          EN_IN  : out   std_logic; 
          EN_PC  : out   std_logic; 
          MUXA   : out   std_logic; 
          MUXB   : out   std_logic; 
          MUXC   : out   std_logic; 
          RAM    : out   std_logic);
end decoder_MUSER_top_level_v1;

architecture BEHAVIORAL of decoder_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   signal ADD            : std_logic;
   signal BITAND         : std_logic;
   signal CARRY_REG      : std_logic;
   signal DECODE         : std_logic;
   signal EN_ST          : std_logic;
   signal EXECUTE        : std_logic;
   signal FETCH          : std_logic;
   signal INCREMENT      : std_logic;
   signal INPUT          : std_logic;
   signal JUMP           : std_logic;
   signal JUMPC          : std_logic;
   signal JUMPNC         : std_logic;
   signal JUMPNZ         : std_logic;
   signal JUMPZ          : std_logic;
   signal JUMP_NOT_TAKEN : std_logic;
   signal LOAD           : std_logic;
   signal OUTPUT         : std_logic;
   signal SUB            : std_logic;
   signal XLXN_226       : std_logic;
   signal XLXN_229       : std_logic;
   signal XLXN_327       : std_logic;
   signal XLXN_328       : std_logic;
   signal XLXN_355       : std_logic;
   signal XLXN_356       : std_logic;
   signal XLXN_499       : std_logic;
   signal XLXN_500       : std_logic;
   signal XLXN_506       : std_logic;
   signal XLXN_507       : std_logic;
   signal XLXN_508       : std_logic;
   signal XLXN_509       : std_logic;
   signal XLXN_510       : std_logic;
   signal XLXN_517       : std_logic;
   signal XLXN_521       : std_logic;
   signal XLXN_591       : std_logic;
   signal XLXN_641       : std_logic;
   signal XLXN_665       : std_logic;
   signal XLXN_749       : std_logic;
   signal XLXN_759       : std_logic;
   signal XLXN_760       : std_logic;
   signal XLXN_761       : std_logic;
   signal XLXN_762       : std_logic;
   signal XLXN_767       : std_logic;
   signal XLXN_768       : std_logic;
   signal XLXN_769       : std_logic;
   signal XLXN_770       : std_logic;
   signal XLXN_771       : std_logic;
   signal XLXN_773       : std_logic;
   signal XLXN_774       : std_logic;
   signal XLXN_777       : std_logic;
   signal XLXN_790       : std_logic;
   signal ZERO_REG       : std_logic;
   component sequence_generator_MUSER_top_level_v1
      port ( CLR : in    std_logic; 
             F   : out   std_logic; 
             D   : out   std_logic; 
             E   : out   std_logic; 
             I   : out   std_logic; 
             CE  : in    std_logic; 
             CLK : in    std_logic);
   end component;
   
   component register_2bit_MUSER_top_level_v1
      port ( CLK : in    std_logic; 
             DO0 : out   std_logic; 
             DO1 : out   std_logic; 
             CLR : in    std_logic; 
             CE  : in    std_logic; 
             DI0 : in    std_logic; 
             DI1 : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component instruction_decoder_MUSER_top_level_v1
      port ( A      : in    std_logic_vector (7 downto 0); 
             ADD    : out   std_logic; 
             LOAD   : out   std_logic; 
             OUTPUT : out   std_logic; 
             INPUT  : out   std_logic; 
             JUMPZ  : out   std_logic; 
             JUMP   : out   std_logic; 
             JUMPNZ : out   std_logic; 
             JUMPC  : out   std_logic; 
             JUMPNC : out   std_logic; 
             SUB    : out   std_logic; 
             BITAND : out   std_logic);
   end component;
   
begin
   XLXI_1 : sequence_generator_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D=>DECODE,
                E=>EXECUTE,
                F=>FETCH,
                I=>INCREMENT);
   
   XLXI_4 : register_2bit_MUSER_top_level_v1
      port map (CE=>EN_ST,
                CLK=>CLK,
                CLR=>CLR,
                DI0=>Carry,
                DI1=>Zero,
                DO0=>CARRY_REG,
                DO1=>ZERO_REG);
   
   XLXI_5 : BUF
      port map (I=>INCREMENT,
                O=>MUXA);
   
   XLXI_6 : BUF
      port map (I=>INCREMENT,
                O=>ALU_S4);
   
   XLXI_7 : BUF
      port map (I=>XLXN_591,
                O=>ALU_S2);
   
   XLXI_8 : BUF
      port map (I=>SUB,
                O=>ALU_S3);
   
   XLXI_9 : BUF
      port map (I=>XLXN_665,
                O=>ALU_S1);
   
   XLXI_10 : BUF
      port map (I=>XLXN_641,
                O=>ALU_S0);
   
   XLXI_11 : BUF
      port map (I=>XLXN_226,
                O=>MUXB);
   
   XLXI_12 : BUF
      port map (I=>XLXN_229,
                O=>MUXC);
   
   XLXI_13 : BUF
      port map (I=>XLXN_328,
                O=>EN_DA);
   
   XLXI_14 : BUF
      port map (I=>XLXN_356,
                O=>RAM);
   
   XLXI_16 : BUF
      port map (I=>FETCH,
                O=>EN_IN);
   
   XLXI_18 : BUF
      port map (I=>XLXN_355,
                O=>EN_PC);
   
   XLXI_112 : AND2
      port map (I0=>JUMP_NOT_TAKEN,
                I1=>INCREMENT,
                O=>XLXN_499);
   
   XLXI_115 : OR2
      port map (I0=>OUTPUT,
                I1=>INPUT,
                O=>XLXN_229);
   
   XLXI_152 : OR3
      port map (I0=>BITAND,
                I1=>SUB,
                I2=>ADD,
                O=>EN_ST);
   
   XLXI_153 : AND2
      port map (I0=>XLXN_327,
                I1=>EXECUTE,
                O=>XLXN_328);
   
   XLXI_160 : OR2
      port map (I0=>XLXN_500,
                I1=>XLXN_499,
                O=>XLXN_355);
   
   XLXI_161 : AND2
      port map (I0=>XLXN_506,
                I1=>EXECUTE,
                O=>XLXN_500);
   
   XLXI_174 : AND2
      port map (I0=>ZERO_REG,
                I1=>JUMPZ,
                O=>XLXN_507);
   
   XLXI_175 : AND2
      port map (I0=>XLXN_517,
                I1=>JUMPNZ,
                O=>XLXN_508);
   
   XLXI_176 : AND2
      port map (I0=>CARRY_REG,
                I1=>JUMPC,
                O=>XLXN_509);
   
   XLXI_177 : AND2
      port map (I0=>XLXN_521,
                I1=>JUMPNC,
                O=>XLXN_510);
   
   XLXI_179 : INV
      port map (I=>ZERO_REG,
                O=>XLXN_517);
   
   XLXI_197 : OR5
      port map (I0=>JUMP,
                I1=>XLXN_510,
                I2=>XLXN_509,
                I3=>XLXN_508,
                I4=>XLXN_507,
                O=>XLXN_506);
   
   XLXI_209 : INV
      port map (I=>CARRY_REG,
                O=>XLXN_521);
   
   XLXI_266 : INV
      port map (I=>XLXN_506,
                O=>XLXN_777);
   
   XLXI_267 : OR2
      port map (I0=>SUB,
                I1=>INCREMENT,
                O=>XLXN_591);
   
   XLXI_281 : OR5
      port map (I0=>JUMPNC,
                I1=>JUMPC,
                I2=>JUMPNZ,
                I3=>JUMPZ,
                I4=>JUMP,
                O=>XLXN_790);
   
   XLXI_282 : OR4
      port map (I0=>XLXN_790,
                I1=>OUTPUT,
                I2=>INPUT,
                I3=>LOAD,
                O=>XLXN_665);
   
   XLXI_288 : AND2
      port map (I0=>OUTPUT,
                I1=>EXECUTE,
                O=>XLXN_356);
   
   XLXI_312 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_760,
                O=>LOAD);
   
   XLXI_313 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_761,
                O=>OUTPUT);
   
   XLXI_314 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_762,
                O=>INPUT);
   
   XLXI_315 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_767,
                O=>JUMPZ);
   
   XLXI_316 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_768,
                O=>JUMP);
   
   XLXI_317 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_769,
                O=>JUMPNZ);
   
   XLXI_318 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_759,
                O=>ADD);
   
   XLXI_319 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_770,
                O=>JUMPC);
   
   XLXI_320 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_771,
                O=>JUMPNC);
   
   XLXI_321 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_773,
                O=>SUB);
   
   XLXI_322 : AND2
      port map (I0=>XLXN_749,
                I1=>XLXN_774,
                O=>BITAND);
   
   XLXI_354 : OR2
      port map (I0=>EXECUTE,
                I1=>DECODE,
                O=>XLXN_749);
   
   XLXI_355 : FDC
      port map (C=>CLK,
                CLR=>CLR,
                D=>XLXN_777,
                Q=>JUMP_NOT_TAKEN);
   
   XLXI_357 : instruction_decoder_MUSER_top_level_v1
      port map (A(7 downto 0)=>IR(7 downto 0),
                ADD=>XLXN_759,
                BITAND=>XLXN_774,
                INPUT=>XLXN_762,
                JUMP=>XLXN_768,
                JUMPC=>XLXN_770,
                JUMPNC=>XLXN_771,
                JUMPNZ=>XLXN_769,
                JUMPZ=>XLXN_767,
                LOAD=>XLXN_760,
                OUTPUT=>XLXN_761,
                SUB=>XLXN_773);
   
   XLXI_358 : OR5
      port map (I0=>INPUT,
                I1=>BITAND,
                I2=>SUB,
                I3=>ADD,
                I4=>LOAD,
                O=>XLXN_327);
   
   XLXI_360 : OR4
      port map (I0=>SUB,
                I1=>BITAND,
                I2=>ADD,
                I3=>LOAD,
                O=>XLXN_226);
   
   XLXI_362 : OR4
      port map (I0=>XLXN_790,
                I1=>LOAD,
                I2=>INPUT,
                I3=>BITAND,
                O=>XLXN_641);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity replicate_v1_MUSER_top_level_v1 is
   port ( A : in    std_logic; 
          Z : out   std_logic_vector (7 downto 0));
end replicate_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of replicate_v1_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>A,
                O=>Z(0));
   
   XLXI_2 : BUF
      port map (I=>A,
                O=>Z(1));
   
   XLXI_3 : BUF
      port map (I=>A,
                O=>Z(2));
   
   XLXI_4 : BUF
      port map (I=>A,
                O=>Z(3));
   
   XLXI_5 : BUF
      port map (I=>A,
                O=>Z(4));
   
   XLXI_6 : BUF
      port map (I=>A,
                O=>Z(5));
   
   XLXI_7 : BUF
      port map (I=>A,
                O=>Z(6));
   
   XLXI_8 : BUF
      port map (I=>A,
                O=>Z(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bitwise_and_v1_MUSER_top_level_v1 is
   port ( A : in    std_logic_vector (7 downto 0); 
          B : in    std_logic_vector (7 downto 0); 
          Z : out   std_logic_vector (7 downto 0));
end bitwise_and_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of bitwise_and_v1_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B(0),
                I1=>A(0),
                O=>Z(0));
   
   XLXI_2 : AND2
      port map (I0=>B(1),
                I1=>A(1),
                O=>Z(1));
   
   XLXI_3 : AND2
      port map (I0=>B(2),
                I1=>A(2),
                O=>Z(2));
   
   XLXI_4 : AND2
      port map (I0=>B(3),
                I1=>A(3),
                O=>Z(3));
   
   XLXI_5 : AND2
      port map (I0=>B(4),
                I1=>A(4),
                O=>Z(4));
   
   XLXI_6 : AND2
      port map (I0=>B(5),
                I1=>A(5),
                O=>Z(5));
   
   XLXI_7 : AND2
      port map (I0=>B(6),
                I1=>A(6),
                O=>Z(6));
   
   XLXI_8 : AND2
      port map (I0=>B(7),
                I1=>A(7),
                O=>Z(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bitwise_inv_v1_MUSER_top_level_v1 is
   port ( A  : in    std_logic_vector (7 downto 0); 
          EN : in    std_logic; 
          Z  : out   std_logic_vector (7 downto 0));
end bitwise_inv_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of bitwise_inv_v1_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>EN,
                I1=>A(1),
                O=>Z(1));
   
   XLXI_2 : XOR2
      port map (I0=>EN,
                I1=>A(2),
                O=>Z(2));
   
   XLXI_3 : XOR2
      port map (I0=>EN,
                I1=>A(3),
                O=>Z(3));
   
   XLXI_4 : XOR2
      port map (I0=>EN,
                I1=>A(4),
                O=>Z(4));
   
   XLXI_5 : XOR2
      port map (I0=>EN,
                I1=>A(5),
                O=>Z(5));
   
   XLXI_6 : XOR2
      port map (I0=>EN,
                I1=>A(6),
                O=>Z(6));
   
   XLXI_7 : XOR2
      port map (I0=>EN,
                I1=>A(7),
                O=>Z(7));
   
   XLXI_8 : XOR2
      port map (I0=>EN,
                I1=>A(0),
                O=>Z(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux2_1_1_MUSER_top_level_v1 is
   port ( A   : in    std_logic; 
          B   : in    std_logic; 
          SEL : in    std_logic; 
          Z   : out   std_logic);
end mux2_1_1_MUSER_top_level_v1;

architecture BEHAVIORAL of mux2_1_1_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>XLXN_2,
                I1=>A,
                O=>XLXN_5);
   
   XLXI_2 : AND2
      port map (I0=>B,
                I1=>SEL,
                O=>XLXN_6);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_6,
                I1=>XLXN_5,
                O=>Z);
   
   XLXI_4 : INV
      port map (I=>SEL,
                O=>XLXN_2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux2_1_8_MUSER_top_level_v1 is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          A4  : in    std_logic; 
          A5  : in    std_logic; 
          A6  : in    std_logic; 
          A7  : in    std_logic; 
          B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          B4  : in    std_logic; 
          B5  : in    std_logic; 
          B6  : in    std_logic; 
          B7  : in    std_logic; 
          SEL : in    std_logic; 
          Z0  : out   std_logic; 
          Z1  : out   std_logic; 
          Z2  : out   std_logic; 
          Z3  : out   std_logic; 
          Z4  : out   std_logic; 
          Z5  : out   std_logic; 
          Z6  : out   std_logic; 
          Z7  : out   std_logic);
end mux2_1_8_MUSER_top_level_v1;

architecture BEHAVIORAL of mux2_1_8_MUSER_top_level_v1 is
   component mux2_1_1_MUSER_top_level_v1
      port ( A   : in    std_logic; 
             Z   : out   std_logic; 
             SEL : in    std_logic; 
             B   : in    std_logic);
   end component;
   
begin
   XLXI_1 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A0,
                B=>B0,
                SEL=>SEL,
                Z=>Z0);
   
   XLXI_2 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A1,
                B=>B1,
                SEL=>SEL,
                Z=>Z1);
   
   XLXI_3 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A2,
                B=>B2,
                SEL=>SEL,
                Z=>Z2);
   
   XLXI_4 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A3,
                B=>B3,
                SEL=>SEL,
                Z=>Z3);
   
   XLXI_13 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A4,
                B=>B4,
                SEL=>SEL,
                Z=>Z4);
   
   XLXI_14 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A5,
                B=>B5,
                SEL=>SEL,
                Z=>Z5);
   
   XLXI_15 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A6,
                B=>B6,
                SEL=>SEL,
                Z=>Z6);
   
   XLXI_16 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A7,
                B=>B7,
                SEL=>SEL,
                Z=>Z7);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux4_1_8_v1_MUSER_top_level_v1 is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          C    : in    std_logic_vector (7 downto 0); 
          D    : in    std_logic_vector (7 downto 0); 
          SEL0 : in    std_logic; 
          SEL1 : in    std_logic; 
          Z    : out   std_logic_vector (7 downto 0));
end mux4_1_8_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of mux4_1_8_v1_MUSER_top_level_v1 is
   signal X    : std_logic_vector (7 downto 0);
   signal Y    : std_logic_vector (7 downto 0);
   component mux2_1_8_MUSER_top_level_v1
      port ( A1  : in    std_logic; 
             B1  : in    std_logic; 
             A2  : in    std_logic; 
             B2  : in    std_logic; 
             A3  : in    std_logic; 
             B3  : in    std_logic; 
             A4  : in    std_logic; 
             B4  : in    std_logic; 
             A5  : in    std_logic; 
             B5  : in    std_logic; 
             A6  : in    std_logic; 
             B6  : in    std_logic; 
             A7  : in    std_logic; 
             B7  : in    std_logic; 
             B0  : in    std_logic; 
             A0  : in    std_logic; 
             SEL : in    std_logic; 
             Z7  : out   std_logic; 
             Z0  : out   std_logic; 
             Z6  : out   std_logic; 
             Z1  : out   std_logic; 
             Z5  : out   std_logic; 
             Z2  : out   std_logic; 
             Z4  : out   std_logic; 
             Z3  : out   std_logic);
   end component;
   
begin
   XLXI_1 : mux2_1_8_MUSER_top_level_v1
      port map (A0=>A(0),
                A1=>A(1),
                A2=>A(2),
                A3=>A(3),
                A4=>A(4),
                A5=>A(5),
                A6=>A(6),
                A7=>A(7),
                B0=>B(0),
                B1=>B(1),
                B2=>B(2),
                B3=>B(3),
                B4=>B(4),
                B5=>B(5),
                B6=>B(6),
                B7=>B(7),
                SEL=>SEL0,
                Z0=>Y(0),
                Z1=>Y(1),
                Z2=>Y(2),
                Z3=>Y(3),
                Z4=>Y(4),
                Z5=>Y(5),
                Z6=>Y(6),
                Z7=>Y(7));
   
   XLXI_2 : mux2_1_8_MUSER_top_level_v1
      port map (A0=>C(0),
                A1=>C(1),
                A2=>C(2),
                A3=>C(3),
                A4=>C(4),
                A5=>C(5),
                A6=>C(6),
                A7=>C(7),
                B0=>D(0),
                B1=>D(1),
                B2=>D(2),
                B3=>D(3),
                B4=>D(4),
                B5=>D(5),
                B6=>D(6),
                B7=>D(7),
                SEL=>SEL0,
                Z0=>X(0),
                Z1=>X(1),
                Z2=>X(2),
                Z3=>X(3),
                Z4=>X(4),
                Z5=>X(5),
                Z6=>X(6),
                Z7=>X(7));
   
   XLXI_3 : mux2_1_8_MUSER_top_level_v1
      port map (A0=>Y(0),
                A1=>Y(1),
                A2=>Y(2),
                A3=>Y(3),
                A4=>Y(4),
                A5=>Y(5),
                A6=>Y(6),
                A7=>Y(7),
                B0=>X(0),
                B1=>X(1),
                B2=>X(2),
                B3=>X(3),
                B4=>X(4),
                B5=>X(5),
                B6=>X(6),
                B7=>X(7),
                SEL=>SEL1,
                Z0=>Z(0),
                Z1=>Z(1),
                Z2=>Z(2),
                Z3=>Z(3),
                Z4=>Z(4),
                Z5=>Z(5),
                Z6=>Z(6),
                Z7=>Z(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity half_adder_MUSER_top_level_v1 is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end half_adder_MUSER_top_level_v1;

architecture BEHAVIORAL of half_adder_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B,
                I1=>A,
                O=>Cout);
   
   XLXI_2 : XOR2
      port map (I0=>B,
                I1=>A,
                O=>Sum);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity full_adder_MUSER_top_level_v1 is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end full_adder_MUSER_top_level_v1;

architecture BEHAVIORAL of full_adder_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_7 : std_logic;
   component half_adder_MUSER_top_level_v1
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cout : out   std_logic; 
             Sum  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   HA0 : half_adder_MUSER_top_level_v1
      port map (A=>A,
                B=>B,
                Cout=>XLXN_1,
                Sum=>XLXN_7);
   
   HA1 : half_adder_MUSER_top_level_v1
      port map (A=>XLXN_7,
                B=>Cin,
                Cout=>XLXN_2,
                Sum=>Sum);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_2,
                I1=>XLXN_1,
                O=>Cout);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ripple_adder_v1_MUSER_top_level_v1 is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic_vector (7 downto 0));
end ripple_adder_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of ripple_adder_v1_MUSER_top_level_v1 is
   signal XLXN_1   : std_logic;
   signal XLXN_12  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_32  : std_logic;
   signal XLXN_37  : std_logic;
   signal XLXN_101 : std_logic;
   signal XLXN_103 : std_logic;
   component full_adder_MUSER_top_level_v1
      port ( A    : in    std_logic; 
             Cout : out   std_logic; 
             Sum  : out   std_logic; 
             Cin  : in    std_logic; 
             B    : in    std_logic);
   end component;
   
begin
   FA0 : full_adder_MUSER_top_level_v1
      port map (A=>A(0),
                B=>B(0),
                Cin=>Cin,
                Cout=>XLXN_1,
                Sum=>Sum(0));
   
   FA1 : full_adder_MUSER_top_level_v1
      port map (A=>A(1),
                B=>B(1),
                Cin=>XLXN_1,
                Cout=>XLXN_12,
                Sum=>Sum(1));
   
   FA2 : full_adder_MUSER_top_level_v1
      port map (A=>A(2),
                B=>B(2),
                Cin=>XLXN_12,
                Cout=>XLXN_27,
                Sum=>Sum(2));
   
   FA3 : full_adder_MUSER_top_level_v1
      port map (A=>A(3),
                B=>B(3),
                Cin=>XLXN_27,
                Cout=>XLXN_32,
                Sum=>Sum(3));
   
   FA4 : full_adder_MUSER_top_level_v1
      port map (A=>A(4),
                B=>B(4),
                Cin=>XLXN_32,
                Cout=>XLXN_37,
                Sum=>Sum(4));
   
   FA5 : full_adder_MUSER_top_level_v1
      port map (A=>A(5),
                B=>B(5),
                Cin=>XLXN_37,
                Cout=>XLXN_101,
                Sum=>Sum(5));
   
   FA6 : full_adder_MUSER_top_level_v1
      port map (A=>A(6),
                B=>B(6),
                Cin=>XLXN_101,
                Cout=>XLXN_103,
                Sum=>Sum(6));
   
   FA7 : full_adder_MUSER_top_level_v1
      port map (A=>A(7),
                B=>B(7),
                Cin=>XLXN_103,
                Cout=>Cout,
                Sum=>Sum(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_v2_MUSER_top_level_v1 is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          S0   : in    std_logic; 
          S1   : in    std_logic; 
          S2   : in    std_logic; 
          S3   : in    std_logic; 
          S4   : in    std_logic; 
          Cout : out   std_logic; 
          Z    : out   std_logic_vector (7 downto 0));
end ALU_v2_MUSER_top_level_v1;

architecture BEHAVIORAL of ALU_v2_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic_vector (7 downto 0);
   signal XLXN_2  : std_logic_vector (7 downto 0);
   signal XLXN_60 : std_logic_vector (7 downto 0);
   signal XLXN_73 : std_logic_vector (7 downto 0);
   signal XLXN_78 : std_logic;
   signal XLXN_90 : std_logic_vector (7 downto 0);
   component ripple_adder_v1_MUSER_top_level_v1
      port ( A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             Cin  : in    std_logic; 
             Sum  : out   std_logic_vector (7 downto 0); 
             Cout : out   std_logic);
   end component;
   
   component bitwise_and_v1_MUSER_top_level_v1
      port ( A : in    std_logic_vector (7 downto 0); 
             B : in    std_logic_vector (7 downto 0); 
             Z : out   std_logic_vector (7 downto 0));
   end component;
   
   component mux4_1_8_v1_MUSER_top_level_v1
      port ( Z    : out   std_logic_vector (7 downto 0); 
             A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             C    : in    std_logic_vector (7 downto 0); 
             D    : in    std_logic_vector (7 downto 0); 
             SEL1 : in    std_logic; 
             SEL0 : in    std_logic);
   end component;
   
   component bitwise_inv_v1_MUSER_top_level_v1
      port ( A  : in    std_logic_vector (7 downto 0); 
             EN : in    std_logic; 
             Z  : out   std_logic_vector (7 downto 0));
   end component;
   
   component replicate_v1_MUSER_top_level_v1
      port ( A : in    std_logic; 
             Z : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : ripple_adder_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>XLXN_60(7 downto 0),
                Cin=>S2,
                Cout=>Cout,
                Sum(7 downto 0)=>XLXN_1(7 downto 0));
   
   XLXI_2 : bitwise_and_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                Z(7 downto 0)=>XLXN_2(7 downto 0));
   
   XLXI_3 : mux4_1_8_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>XLXN_1(7 downto 0),
                B(7 downto 0)=>XLXN_2(7 downto 0),
                C(7 downto 0)=>A(7 downto 0),
                D(7 downto 0)=>B(7 downto 0),
                SEL0=>S0,
                SEL1=>S1,
                Z(7 downto 0)=>Z(7 downto 0));
   
   XLXI_5 : bitwise_inv_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>B(7 downto 0),
                EN=>S3,
                Z(7 downto 0)=>XLXN_90(7 downto 0));
   
   XLXI_19 : bitwise_and_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>XLXN_73(7 downto 0),
                B(7 downto 0)=>XLXN_90(7 downto 0),
                Z(7 downto 0)=>XLXN_60(7 downto 0));
   
   XLXI_20 : replicate_v1_MUSER_top_level_v1
      port map (A=>XLXN_78,
                Z(7 downto 0)=>XLXN_73(7 downto 0));
   
   XLXI_22 : INV
      port map (I=>S4,
                O=>XLXN_78);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux2_1_8_v1_MUSER_top_level_v1 is
   port ( A   : in    std_logic_vector (7 downto 0); 
          B   : in    std_logic_vector (7 downto 0); 
          SEL : in    std_logic; 
          Z   : out   std_logic_vector (7 downto 0));
end mux2_1_8_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of mux2_1_8_v1_MUSER_top_level_v1 is
   component mux2_1_1_MUSER_top_level_v1
      port ( A   : in    std_logic; 
             Z   : out   std_logic; 
             SEL : in    std_logic; 
             B   : in    std_logic);
   end component;
   
begin
   XLXI_1 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(0),
                B=>B(0),
                SEL=>SEL,
                Z=>Z(0));
   
   XLXI_2 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(1),
                B=>B(1),
                SEL=>SEL,
                Z=>Z(1));
   
   XLXI_3 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(2),
                B=>B(2),
                SEL=>SEL,
                Z=>Z(2));
   
   XLXI_4 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(3),
                B=>B(3),
                SEL=>SEL,
                Z=>Z(3));
   
   XLXI_13 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(4),
                B=>B(4),
                SEL=>SEL,
                Z=>Z(4));
   
   XLXI_14 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(5),
                B=>B(5),
                SEL=>SEL,
                Z=>Z(5));
   
   XLXI_15 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(6),
                B=>B(6),
                SEL=>SEL,
                Z=>Z(6));
   
   XLXI_16 : mux2_1_1_MUSER_top_level_v1
      port map (A=>A(7),
                B=>B(7),
                SEL=>SEL,
                Z=>Z(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity register_4_MUSER_top_level_v1 is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end register_4_MUSER_top_level_v1;

architecture BEHAVIORAL of register_4_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>D0,
                Q=>Q0);
   
   XLXI_2 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>D1,
                Q=>Q1);
   
   XLXI_3 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>D2,
                Q=>Q2);
   
   XLXI_4 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>D3,
                Q=>Q3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity register_8_v1_MUSER_top_level_v1 is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (7 downto 0); 
          Q   : out   std_logic_vector (7 downto 0));
end register_8_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of register_8_v1_MUSER_top_level_v1 is
   component register_4_MUSER_top_level_v1
      port ( CE  : in    std_logic; 
             Q3  : out   std_logic; 
             D3  : in    std_logic; 
             D2  : in    std_logic; 
             D1  : in    std_logic; 
             D0  : in    std_logic; 
             Q2  : out   std_logic; 
             Q1  : out   std_logic; 
             Q0  : out   std_logic; 
             CLR : in    std_logic; 
             CLK : in    std_logic);
   end component;
   
begin
   XLXI_20 : register_4_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D0=>D(0),
                D1=>D(1),
                D2=>D(2),
                D3=>D(3),
                Q0=>Q(0),
                Q1=>Q(1),
                Q2=>Q(2),
                Q3=>Q(3));
   
   XLXI_21 : register_4_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D0=>D(4),
                D1=>D(5),
                D2=>D(6),
                D3=>D(7),
                Q0=>Q(4),
                Q1=>Q(5),
                Q2=>Q(6),
                Q3=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity split16_v1_MUSER_top_level_v1 is
   port ( A    : in    std_logic_vector (15 downto 0); 
          High : out   std_logic_vector (7 downto 0); 
          Low  : out   std_logic_vector (7 downto 0));
end split16_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of split16_v1_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>A(15),
                O=>High(7));
   
   XLXI_2 : BUF
      port map (I=>A(14),
                O=>High(6));
   
   XLXI_3 : BUF
      port map (I=>A(13),
                O=>High(5));
   
   XLXI_4 : BUF
      port map (I=>A(12),
                O=>High(4));
   
   XLXI_5 : BUF
      port map (I=>A(11),
                O=>High(3));
   
   XLXI_6 : BUF
      port map (I=>A(10),
                O=>High(2));
   
   XLXI_7 : BUF
      port map (I=>A(9),
                O=>High(1));
   
   XLXI_8 : BUF
      port map (I=>A(8),
                O=>High(0));
   
   XLXI_17 : BUF
      port map (I=>A(7),
                O=>Low(7));
   
   XLXI_18 : BUF
      port map (I=>A(6),
                O=>Low(6));
   
   XLXI_19 : BUF
      port map (I=>A(5),
                O=>Low(5));
   
   XLXI_20 : BUF
      port map (I=>A(4),
                O=>Low(4));
   
   XLXI_21 : BUF
      port map (I=>A(3),
                O=>Low(3));
   
   XLXI_22 : BUF
      port map (I=>A(2),
                O=>Low(2));
   
   XLXI_23 : BUF
      port map (I=>A(1),
                O=>Low(1));
   
   XLXI_24 : BUF
      port map (I=>A(0),
                O=>Low(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity register_8_MUSER_top_level_v1 is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          D4  : in    std_logic; 
          D5  : in    std_logic; 
          D6  : in    std_logic; 
          D7  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          Q4  : out   std_logic; 
          Q5  : out   std_logic; 
          Q6  : out   std_logic; 
          Q7  : out   std_logic);
end register_8_MUSER_top_level_v1;

architecture BEHAVIORAL of register_8_MUSER_top_level_v1 is
   component register_4_MUSER_top_level_v1
      port ( CE  : in    std_logic; 
             Q3  : out   std_logic; 
             D3  : in    std_logic; 
             D2  : in    std_logic; 
             D1  : in    std_logic; 
             D0  : in    std_logic; 
             Q2  : out   std_logic; 
             Q1  : out   std_logic; 
             Q0  : out   std_logic; 
             CLR : in    std_logic; 
             CLK : in    std_logic);
   end component;
   
begin
   XLXI_20 : register_4_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D0=>D0,
                D1=>D1,
                D2=>D2,
                D3=>D3,
                Q0=>Q0,
                Q1=>Q1,
                Q2=>Q2,
                Q3=>Q3);
   
   XLXI_21 : register_4_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D0=>D4,
                D1=>D5,
                D2=>D6,
                D3=>D7,
                Q0=>Q4,
                Q1=>Q5,
                Q2=>Q6,
                Q3=>Q7);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity register_16_v1_MUSER_top_level_v1 is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (15 downto 0); 
          Q   : out   std_logic_vector (15 downto 0));
end register_16_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of register_16_v1_MUSER_top_level_v1 is
   component register_8_MUSER_top_level_v1
      port ( D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D4  : in    std_logic; 
             D5  : in    std_logic; 
             D6  : in    std_logic; 
             D7  : in    std_logic; 
             CLK : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             Q4  : out   std_logic; 
             Q5  : out   std_logic; 
             Q6  : out   std_logic; 
             Q7  : out   std_logic);
   end component;
   
begin
   XLXI_1 : register_8_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D0=>D(0),
                D1=>D(1),
                D2=>D(2),
                D3=>D(3),
                D4=>D(4),
                D5=>D(5),
                D6=>D(6),
                D7=>D(7),
                Q0=>Q(0),
                Q1=>Q(1),
                Q2=>Q(2),
                Q3=>Q(3),
                Q4=>Q(4),
                Q5=>Q(5),
                Q6=>Q(6),
                Q7=>Q(7));
   
   XLXI_2 : register_8_MUSER_top_level_v1
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                D0=>D(8),
                D1=>D(9),
                D2=>D(10),
                D3=>D(11),
                D4=>D(12),
                D5=>D(13),
                D6=>D(14),
                D7=>D(15),
                Q0=>Q(8),
                Q1=>Q(9),
                Q2=>Q(10),
                Q3=>Q(11),
                Q4=>Q(12),
                Q5=>Q(13),
                Q6=>Q(14),
                Q7=>Q(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity join16_v1_MUSER_top_level_v1 is
   port ( High : in    std_logic_vector (7 downto 0); 
          Low  : in    std_logic_vector (7 downto 0); 
          Z    : out   std_logic_vector (15 downto 0));
end join16_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of join16_v1_MUSER_top_level_v1 is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>High(7),
                O=>Z(15));
   
   XLXI_2 : BUF
      port map (I=>High(6),
                O=>Z(14));
   
   XLXI_3 : BUF
      port map (I=>High(5),
                O=>Z(13));
   
   XLXI_4 : BUF
      port map (I=>High(4),
                O=>Z(12));
   
   XLXI_5 : BUF
      port map (I=>High(3),
                O=>Z(11));
   
   XLXI_6 : BUF
      port map (I=>High(2),
                O=>Z(10));
   
   XLXI_7 : BUF
      port map (I=>High(1),
                O=>Z(9));
   
   XLXI_8 : BUF
      port map (I=>High(0),
                O=>Z(8));
   
   XLXI_17 : BUF
      port map (I=>Low(7),
                O=>Z(7));
   
   XLXI_18 : BUF
      port map (I=>Low(6),
                O=>Z(6));
   
   XLXI_19 : BUF
      port map (I=>Low(5),
                O=>Z(5));
   
   XLXI_20 : BUF
      port map (I=>Low(4),
                O=>Z(4));
   
   XLXI_21 : BUF
      port map (I=>Low(3),
                O=>Z(3));
   
   XLXI_22 : BUF
      port map (I=>Low(2),
                O=>Z(2));
   
   XLXI_23 : BUF
      port map (I=>Low(1),
                O=>Z(1));
   
   XLXI_24 : BUF
      port map (I=>Low(0),
                O=>Z(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity NOR8_MXILINX_top_level_v1 is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end NOR8_MXILINX_top_level_v1;

architecture BEHAVIORAL of NOR8_MXILINX_top_level_v1 is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_29 : label is "X0Y0";
   attribute RLOC of I_36_138 : label is "X0Y0";
   attribute RLOC of I_36_144 : label is "X0Y1";
begin
   O <= O_DUMMY;
   I_36_29 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_110 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : OR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_138 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_140 : NOR2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_144 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity nor8_v1_MUSER_top_level_v1 is
   port ( A : in    std_logic_vector (7 downto 0); 
          Z : out   std_logic);
end nor8_v1_MUSER_top_level_v1;

architecture BEHAVIORAL of nor8_v1_MUSER_top_level_v1 is
   attribute HU_SET     : string ;
   component NOR8_MXILINX_top_level_v1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_3";
begin
   XLXI_1 : NOR8_MXILINX_top_level_v1
      port map (I0=>A(7),
                I1=>A(6),
                I2=>A(5),
                I3=>A(4),
                I4=>A(3),
                I5=>A(2),
                I6=>A(1),
                I7=>A(0),
                O=>Z);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top_level_v1 is
   port ( CLK        : in    std_logic; 
          NCLR       : in    std_logic; 
          SERIAL_OUT : out   std_logic);
end top_level_v1;

architecture BEHAVIORAL of top_level_v1 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ACC_DATA   : std_logic_vector (7 downto 0);
   signal ADDR       : std_logic_vector (7 downto 0);
   signal ALU_DATA   : std_logic_vector (7 downto 0);
   signal ALU_S0     : std_logic;
   signal ALU_S1     : std_logic;
   signal ALU_S2     : std_logic;
   signal ALU_S3     : std_logic;
   signal ALU_S4     : std_logic;
   signal CARRY      : std_logic;
   signal CLR        : std_logic;
   signal CONST      : std_logic_vector (7 downto 0);
   signal CPU_DI     : std_logic_vector (15 downto 0);
   signal CPU_DO     : std_logic_vector (15 downto 0);
   signal EN_DA      : std_logic;
   signal EN_IN      : std_logic;
   signal EN_PC      : std_logic;
   signal INSTR      : std_logic_vector (15 downto 0);
   signal IR_HIGH    : std_logic_vector (7 downto 0);
   signal IR_LOW     : std_logic_vector (7 downto 0);
   signal MUXA       : std_logic;
   signal MUXB       : std_logic;
   signal MUXC       : std_logic;
   signal MUX_A_DATA : std_logic_vector (7 downto 0);
   signal MUX_B_DATA : std_logic_vector (7 downto 0);
   signal PC_ADDR    : std_logic_vector (7 downto 0);
   signal RAM_WE     : std_logic;
   signal XLXN_101   : std_logic_vector (7 downto 0);
   signal XLXN_154   : std_logic;
   signal XLXN_155   : std_logic;
   signal XLXN_156   : std_logic;
   signal XLXN_171   : std_logic;
   signal XLXN_173   : std_logic;
   signal XLXN_174   : std_logic;
   signal ZERO       : std_logic;
   component register_8_v1_MUSER_top_level_v1
      port ( Q   : out   std_logic_vector (7 downto 0); 
             D   : in    std_logic_vector (7 downto 0); 
             CLK : in    std_logic; 
             CLR : in    std_logic; 
             CE  : in    std_logic);
   end component;
   
   component ALU_v2_MUSER_top_level_v1
      port ( A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             S1   : in    std_logic; 
             Z    : out   std_logic_vector (7 downto 0); 
             S0   : in    std_logic; 
             S2   : in    std_logic; 
             S3   : in    std_logic; 
             S4   : in    std_logic; 
             Cout : out   std_logic);
   end component;
   
   component split16_v1_MUSER_top_level_v1
      port ( A    : in    std_logic_vector (15 downto 0); 
             High : out   std_logic_vector (7 downto 0); 
             Low  : out   std_logic_vector (7 downto 0));
   end component;
   
   component decoder_MUSER_top_level_v1
      port ( IR     : in    std_logic_vector (7 downto 0); 
             MUXA   : out   std_logic; 
             MUXB   : out   std_logic; 
             MUXC   : out   std_logic; 
             EN_DA  : out   std_logic; 
             EN_PC  : out   std_logic; 
             ALU_S1 : out   std_logic; 
             ALU_S2 : out   std_logic; 
             ALU_S3 : out   std_logic; 
             ALU_S4 : out   std_logic; 
             CLK    : in    std_logic; 
             Carry  : in    std_logic; 
             Zero   : in    std_logic; 
             CE     : in    std_logic; 
             CLR    : in    std_logic; 
             ALU_S0 : out   std_logic; 
             RAM    : out   std_logic; 
             EN_IN  : out   std_logic);
   end component;
   
   component register_16_v1_MUSER_top_level_v1
      port ( Q   : out   std_logic_vector (15 downto 0); 
             D   : in    std_logic_vector (15 downto 0); 
             CLK : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic);
   end component;
   
   component ram
      port ( we   : in    std_logic; 
             addr : in    std_logic_vector (7 downto 0); 
             din  : in    std_logic_vector (15 downto 0); 
             dout : out   std_logic_vector (15 downto 0); 
             clk  : in    std_logic);
   end component;
   
   component mux2_1_8_v1_MUSER_top_level_v1
      port ( SEL : in    std_logic; 
             B   : in    std_logic_vector (7 downto 0); 
             A   : in    std_logic_vector (7 downto 0); 
             Z   : out   std_logic_vector (7 downto 0));
   end component;
   
   component join16_v1_MUSER_top_level_v1
      port ( Z    : out   std_logic_vector (15 downto 0); 
             High : in    std_logic_vector (7 downto 0); 
             Low  : in    std_logic_vector (7 downto 0));
   end component;
   
   component AND8_MXILINX_top_level_v1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component nor8_v1_MUSER_top_level_v1
      port ( A : in    std_logic_vector (7 downto 0); 
             Z : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_39 : label is "XLXI_39_4";
begin
   CONST(7 downto 0) <= x"A0";
   ACC : register_8_v1_MUSER_top_level_v1
      port map (CE=>EN_DA,
                CLK=>CLK,
                CLR=>CLR,
                D(7 downto 0)=>ALU_DATA(7 downto 0),
                Q(7 downto 0)=>ACC_DATA(7 downto 0));
   
   ALU : ALU_v2_MUSER_top_level_v1
      port map (A(7 downto 0)=>MUX_A_DATA(7 downto 0),
                B(7 downto 0)=>MUX_B_DATA(7 downto 0),
                S0=>ALU_S0,
                S1=>ALU_S1,
                S2=>ALU_S2,
                S3=>ALU_S3,
                S4=>ALU_S4,
                Cout=>CARRY,
                Z(7 downto 0)=>ALU_DATA(7 downto 0));
   
   DATA_SPLIT : split16_v1_MUSER_top_level_v1
      port map (A(15 downto 0)=>CPU_DI(15 downto 0),
                High=>open,
                Low(7 downto 0)=>XLXN_101(7 downto 0));
   
   INSTR_DECODER : decoder_MUSER_top_level_v1
      port map (Carry=>CARRY,
                CE=>XLXN_155,
                CLK=>CLK,
                CLR=>CLR,
                IR(7 downto 0)=>IR_HIGH(7 downto 0),
                Zero=>ZERO,
                ALU_S0=>ALU_S0,
                ALU_S1=>ALU_S1,
                ALU_S2=>ALU_S2,
                ALU_S3=>ALU_S3,
                ALU_S4=>ALU_S4,
                EN_DA=>EN_DA,
                EN_IN=>EN_IN,
                EN_PC=>EN_PC,
                MUXA=>MUXA,
                MUXB=>MUXB,
                MUXC=>MUXC,
                RAM=>RAM_WE);
   
   IR : register_16_v1_MUSER_top_level_v1
      port map (CE=>EN_IN,
                CLK=>CLK,
                CLR=>CLR,
                D(15 downto 0)=>CPU_DI(15 downto 0),
                Q(15 downto 0)=>INSTR(15 downto 0));
   
   IR_SPLIT : split16_v1_MUSER_top_level_v1
      port map (A(15 downto 0)=>INSTR(15 downto 0),
                High(7 downto 0)=>IR_HIGH(7 downto 0),
                Low(7 downto 0)=>IR_LOW(7 downto 0));
   
   MEMORY : ram
      port map (addr(7 downto 0)=>ADDR(7 downto 0),
                clk=>XLXN_171,
                din(15 downto 0)=>CPU_DO(15 downto 0),
                we=>RAM_WE,
                dout(15 downto 0)=>CPU_DI(15 downto 0));
   
   MUX_A : mux2_1_8_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>ACC_DATA(7 downto 0),
                B(7 downto 0)=>PC_ADDR(7 downto 0),
                SEL=>MUXA,
                Z(7 downto 0)=>MUX_A_DATA(7 downto 0));
   
   MUX_B : mux2_1_8_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>XLXN_101(7 downto 0),
                B(7 downto 0)=>IR_LOW(7 downto 0),
                SEL=>MUXB,
                Z(7 downto 0)=>MUX_B_DATA(7 downto 0));
   
   MUX_C : mux2_1_8_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>PC_ADDR(7 downto 0),
                B(7 downto 0)=>IR_LOW(7 downto 0),
                SEL=>MUXC,
                Z(7 downto 0)=>ADDR(7 downto 0));
   
   PAD : join16_v1_MUSER_top_level_v1
      port map (High(7 downto 0)=>CONST(7 downto 0),
                Low(7 downto 0)=>ACC_DATA(7 downto 0),
                Z(15 downto 0)=>CPU_DO(15 downto 0));
   
   PC : register_8_v1_MUSER_top_level_v1
      port map (CE=>EN_PC,
                CLK=>CLK,
                CLR=>CLR,
                D(7 downto 0)=>ALU_DATA(7 downto 0),
                Q(7 downto 0)=>PC_ADDR(7 downto 0));
   
   XLXI_39 : AND8_MXILINX_top_level_v1
      port map (I0=>ADDR(7),
                I1=>ADDR(6),
                I2=>ADDR(5),
                I3=>ADDR(4),
                I4=>ADDR(3),
                I5=>ADDR(2),
                I6=>ADDR(1),
                I7=>ADDR(0),
                O=>XLXN_154);
   
   XLXI_43 : FDCE
      port map (C=>CLK,
                CE=>XLXN_154,
                CLR=>CLR,
                D=>CPU_DO(0),
                Q=>XLXN_174);
   
   XLXI_44 : BUF
      port map (I=>XLXN_156,
                O=>XLXN_155);
   
   XLXI_45 : VCC
      port map (P=>XLXN_156);
   
   XLXI_46 : INV
      port map (I=>NCLR,
                O=>XLXN_173);
   
   XLXI_49 : FD
      port map (C=>CLK,
                D=>XLXN_173,
                Q=>CLR);
   
   XLXI_51 : INV
      port map (I=>CLK,
                O=>XLXN_171);
   
   XLXI_52 : INV
      port map (I=>XLXN_174,
                O=>SERIAL_OUT);
   
   ZERO_DETECT : nor8_v1_MUSER_top_level_v1
      port map (A(7 downto 0)=>ALU_DATA(7 downto 0),
                Z=>ZERO);
   
end BEHAVIORAL;


