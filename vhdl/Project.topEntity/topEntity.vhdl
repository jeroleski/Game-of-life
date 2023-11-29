-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Project_topEntity_types.all;

entity topEntity is
  port(result_0_0 : out std_logic_vector(0 downto 0);
       result_0_1 : out std_logic_vector(0 downto 0);
       result_0_2 : out std_logic_vector(0 downto 0);
       result_0_3 : out std_logic_vector(0 downto 0);
       result_0_4 : out std_logic_vector(0 downto 0);
       result_1_0 : out std_logic_vector(0 downto 0);
       result_1_1 : out std_logic_vector(0 downto 0);
       result_1_2 : out std_logic_vector(0 downto 0);
       result_1_3 : out std_logic_vector(0 downto 0);
       result_1_4 : out std_logic_vector(0 downto 0);
       result_2_0 : out std_logic_vector(0 downto 0);
       result_2_1 : out std_logic_vector(0 downto 0);
       result_2_2 : out std_logic_vector(0 downto 0);
       result_2_3 : out std_logic_vector(0 downto 0);
       result_2_4 : out std_logic_vector(0 downto 0);
       result_3_0 : out std_logic_vector(0 downto 0);
       result_3_1 : out std_logic_vector(0 downto 0);
       result_3_2 : out std_logic_vector(0 downto 0);
       result_3_3 : out std_logic_vector(0 downto 0);
       result_3_4 : out std_logic_vector(0 downto 0);
       result_4_0 : out std_logic_vector(0 downto 0);
       result_4_1 : out std_logic_vector(0 downto 0);
       result_4_2 : out std_logic_vector(0 downto 0);
       result_4_3 : out std_logic_vector(0 downto 0);
       result_4_4 : out std_logic_vector(0 downto 0));
end;

architecture structural of topEntity is
  signal \c$vec_0\   : Project_topEntity_types.array_of_array_of_5_NeighbourHood(0 to 4);
  signal result      : Project_topEntity_types.array_of_array_of_5_Cell(0 to 4);
  signal result_0    : Project_topEntity_types.array_of_Cell(0 to 4);
  signal result_0_5  : Project_topEntity_types.Cell;
  signal result_0_7  : Project_topEntity_types.Cell;
  signal result_0_9  : Project_topEntity_types.Cell;
  signal result_0_11 : Project_topEntity_types.Cell;
  signal result_0_13 : Project_topEntity_types.Cell;
  signal result_1    : Project_topEntity_types.array_of_Cell(0 to 4);
  signal result_1_15 : Project_topEntity_types.Cell;
  signal result_1_17 : Project_topEntity_types.Cell;
  signal result_1_19 : Project_topEntity_types.Cell;
  signal result_1_21 : Project_topEntity_types.Cell;
  signal result_1_23 : Project_topEntity_types.Cell;
  signal result_2    : Project_topEntity_types.array_of_Cell(0 to 4);
  signal result_2_25 : Project_topEntity_types.Cell;
  signal result_2_27 : Project_topEntity_types.Cell;
  signal result_2_29 : Project_topEntity_types.Cell;
  signal result_2_31 : Project_topEntity_types.Cell;
  signal result_2_33 : Project_topEntity_types.Cell;
  signal result_3    : Project_topEntity_types.array_of_Cell(0 to 4);
  signal result_3_35 : Project_topEntity_types.Cell;
  signal result_3_37 : Project_topEntity_types.Cell;
  signal result_3_39 : Project_topEntity_types.Cell;
  signal result_3_41 : Project_topEntity_types.Cell;
  signal result_3_43 : Project_topEntity_types.Cell;
  signal result_4    : Project_topEntity_types.array_of_Cell(0 to 4);
  signal result_4_45 : Project_topEntity_types.Cell;
  signal result_4_47 : Project_topEntity_types.Cell;
  signal result_4_49 : Project_topEntity_types.Cell;
  signal result_4_51 : Project_topEntity_types.Cell;
  signal result_4_53 : Project_topEntity_types.Cell;

begin
  \c$vec_0\ <= Project_topEntity_types.array_of_array_of_5_NeighbourHood'( Project_topEntity_types.array_of_NeighbourHood'( ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) ) )
                                                                         , Project_topEntity_types.array_of_NeighbourHood'( ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) ) )
                                                                         , Project_topEntity_types.array_of_NeighbourHood'( ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) ) )
                                                                         , Project_topEntity_types.array_of_NeighbourHood'( ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) ) )
                                                                         , Project_topEntity_types.array_of_NeighbourHood'( ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Alive) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) )
                                                                                                                          , ( NeighbourHood_sel0_n => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel1_c => ( NeighbourRow_sel0_w => Cell'(Alive)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) )
                                                                                                                          , NeighbourHood_sel2_s => ( NeighbourRow_sel0_w => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel1_m => Cell'(Dead)
                                                                                                                          , NeighbourRow_sel2_e => Cell'(Dead) ) ) ) );

  -- map begin
  r_map_0 : for i_1 in result'range generate
  begin
    -- map begin
    r_map_1 : for i_0_0 in result(i_1)'range generate
    begin
      fun_1 : block
          signal result_5                   : Project_topEntity_types.Cell;
          signal \c$case_alt\               : Project_topEntity_types.Cell;
          signal \c$case_alt_0\             : boolean;
          signal \c$app_arg\                : signed(63 downto 0);
          signal \c$case_alt_1\             : boolean;
          signal \c$app_arg_0\              : signed(63 downto 0);
          signal \c$case_alt_2\             : Project_topEntity_types.Cell;
          signal x                          : signed(63 downto 0);
          signal n1                         : signed(63 downto 0);
          signal result_selection_2         : Project_topEntity_types.Cell;
          signal \c$case_alt_selection_res\ : boolean;
          signal \c$vec\                    : Project_topEntity_types.array_of_Cell(0 to 7);
        begin
          result(i_1)(i_0_0) <= result_5;

          result_selection_2 <= \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel1_c.NeighbourRow_sel1_m;

          with (result_selection_2) select
            result_5 <= \c$case_alt_2\ when Cell'(Dead),
                        \c$case_alt\ when others;

          \c$case_alt_selection_res\ <= \c$case_alt_1\ and \c$case_alt_0\;

          \c$case_alt\ <= Cell'(Alive) when \c$case_alt_selection_res\ else
                          Cell'(Dead);

          \c$case_alt_0\ <= tagToEnum(\c$app_arg\);

          \c$app_arg\ <= to_signed(1,64) when x <= to_signed(3,64) else to_signed(0,64);

          \c$case_alt_1\ <= tagToEnum(\c$app_arg_0\);

          \c$app_arg_0\ <= to_signed(1,64) when x >= to_signed(2,64) else to_signed(0,64);

          with (x) select
            \c$case_alt_2\ <= Cell'(Alive) when x"0000000000000003",
                              Cell'(Dead) when others;

          x <= n1;

          \c$vec\ <= Project_topEntity_types.array_of_Cell'( \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel0_n.NeighbourRow_sel0_w
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel0_n.NeighbourRow_sel1_m
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel0_n.NeighbourRow_sel2_e
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel1_c.NeighbourRow_sel0_w
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel1_c.NeighbourRow_sel2_e
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel2_s.NeighbourRow_sel0_w
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel2_s.NeighbourRow_sel1_m
                                                           , \c$vec_0\(i_1)(i_0_0).NeighbourHood_sel2_s.NeighbourRow_sel2_e );

          -- foldr begin
          foldr : block
            type foldr_res_type is array (natural range <>) of signed(63 downto 0);
            signal intermediate : foldr_res_type (0 to 8);
          begin
            intermediate(8) <= to_signed(0,64);

            foldr_loop : for i in 0 to (8 - 1) generate
            begin
              fun_2 : block
              signal x1       : signed(63 downto 0);
              signal result_6 : signed(63 downto 0);
            begin
              intermediate(i) <= result_6;

              x1 <= intermediate(i+1);

              with (\c$vec\(i)) select
                result_6 <= intermediate(i+1) when Cell'(Dead),
                            x1 + to_signed(1,64) when others;


            end block;
            end generate;

            n1 <= intermediate(0);
          end block;
          -- foldr end


        end block;
    end generate;
    -- map end
  end generate;
  -- map end

  result_0 <= result(0);

  result_1 <= result(1);

  result_2 <= result(2);

  result_3 <= result(3);

  result_4 <= result(4);

  result_0_5 <= result_0(0);

  result_0_7 <= result_0(1);

  result_0_9 <= result_0(2);

  result_0_11 <= result_0(3);

  result_0_13 <= result_0(4);

  result_0_0 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_0_5));

  result_0_1 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_0_7));

  result_0_2 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_0_9));

  result_0_3 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_0_11));

  result_0_4 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_0_13));

  result_1_15 <= result_1(0);

  result_1_17 <= result_1(1);

  result_1_19 <= result_1(2);

  result_1_21 <= result_1(3);

  result_1_23 <= result_1(4);

  result_1_0 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_1_15));

  result_1_1 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_1_17));

  result_1_2 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_1_19));

  result_1_3 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_1_21));

  result_1_4 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_1_23));

  result_2_25 <= result_2(0);

  result_2_27 <= result_2(1);

  result_2_29 <= result_2(2);

  result_2_31 <= result_2(3);

  result_2_33 <= result_2(4);

  result_2_0 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_2_25));

  result_2_1 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_2_27));

  result_2_2 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_2_29));

  result_2_3 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_2_31));

  result_2_4 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_2_33));

  result_3_35 <= result_3(0);

  result_3_37 <= result_3(1);

  result_3_39 <= result_3(2);

  result_3_41 <= result_3(3);

  result_3_43 <= result_3(4);

  result_3_0 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_3_35));

  result_3_1 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_3_37));

  result_3_2 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_3_39));

  result_3_3 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_3_41));

  result_3_4 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_3_43));

  result_4_45 <= result_4(0);

  result_4_47 <= result_4(1);

  result_4_49 <= result_4(2);

  result_4_51 <= result_4(3);

  result_4_53 <= result_4(4);

  result_4_0 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_4_45));

  result_4_1 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_4_47));

  result_4_2 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_4_49));

  result_4_3 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_4_51));

  result_4_4 <= Project_topEntity_types.toSLV(Project_topEntity_types.Cell'(result_4_53));


end;

