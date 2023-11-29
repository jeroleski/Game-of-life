library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package Project_topEntity_types is


  type Cell is (Dead, Alive);
  type array_of_Cell is array (integer range <>) of Cell;
  type NeighbourRow is record
    NeighbourRow_sel0_w : Cell;
    NeighbourRow_sel1_m : Cell;
    NeighbourRow_sel2_e : Cell;
  end record;
  type array_of_array_of_5_Cell is array (integer range <>) of array_of_Cell(0 to 4);

  type NeighbourHood is record
    NeighbourHood_sel0_n : NeighbourRow;
    NeighbourHood_sel1_c : NeighbourRow;
    NeighbourHood_sel2_s : NeighbourRow;
  end record;
  type array_of_NeighbourHood is array (integer range <>) of NeighbourHood;
  type array_of_array_of_5_NeighbourHood is array (integer range <>) of array_of_NeighbourHood(0 to 4);
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (value : in Cell) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Cell;
  function toSLV (value :  array_of_Cell) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_Cell;
  function toSLV (p : NeighbourRow) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return NeighbourRow;
  function toSLV (value :  array_of_array_of_5_Cell) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_array_of_5_Cell;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (p : NeighbourHood) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return NeighbourHood;
  function toSLV (value :  array_of_NeighbourHood) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_NeighbourHood;
  function toSLV (value :  array_of_array_of_5_NeighbourHood) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_array_of_5_NeighbourHood;
end;

package body Project_topEntity_types is
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function tagToEnum (s : in signed) return boolean is
  begin
    if s = to_signed(0,64) then
      return false;
    else
      return true;
    end if;
  end;
  function dataToTag (b : in boolean) return signed is
  begin
    if b then
      return to_signed(1,64);
    else
      return to_signed(0,64);
    end if;
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (value : in Cell) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(Cell'pos(value), 1));
  end;
  function fromSLV (slv : in std_logic_vector) return Cell is
  begin
    -- pragma translate_off
    if unsigned(slv) <= Cell'pos(Cell'high) then
    -- pragma translate_on
      return Cell'val(to_integer(unsigned(slv)));
    -- pragma translate_off
    else
      return Cell'val(0);
    end if;
    -- pragma translate_on
  end;
  function toSLV (value :  array_of_Cell) return std_logic_vector is
    alias ivalue    : array_of_Cell(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 1);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 1) + 1 to i*1) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_Cell is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_Cell(0 to slv'length / 1 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 1 to (i+1) * 1 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : NeighbourRow) return std_logic_vector is
  begin
    return (toSLV(p.NeighbourRow_sel0_w) & toSLV(p.NeighbourRow_sel1_m) & toSLV(p.NeighbourRow_sel2_e));
  end;
  function fromSLV (slv : in std_logic_vector) return NeighbourRow is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)),fromSLV(islv(2 to 2)));
  end;
  function toSLV (value :  array_of_array_of_5_Cell) return std_logic_vector is
    alias ivalue    : array_of_array_of_5_Cell(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 5);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 5) + 1 to i*5) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_array_of_5_Cell is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_array_of_5_Cell(0 to slv'length / 5 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 5 to (i+1) * 5 - 1));
    end loop;
    return result;
  end;
  function toSLV (s : in signed) return std_logic_vector is
  begin
    return std_logic_vector(s);
  end;
  function fromSLV (slv : in std_logic_vector) return signed is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return signed(islv);
  end;
  function toSLV (p : NeighbourHood) return std_logic_vector is
  begin
    return (toSLV(p.NeighbourHood_sel0_n) & toSLV(p.NeighbourHood_sel1_c) & toSLV(p.NeighbourHood_sel2_s));
  end;
  function fromSLV (slv : in std_logic_vector) return NeighbourHood is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 2)),fromSLV(islv(3 to 5)),fromSLV(islv(6 to 8)));
  end;
  function toSLV (value :  array_of_NeighbourHood) return std_logic_vector is
    alias ivalue    : array_of_NeighbourHood(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 9);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 9) + 1 to i*9) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_NeighbourHood is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_NeighbourHood(0 to slv'length / 9 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 9 to (i+1) * 9 - 1));
    end loop;
    return result;
  end;
  function toSLV (value :  array_of_array_of_5_NeighbourHood) return std_logic_vector is
    alias ivalue    : array_of_array_of_5_NeighbourHood(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 45);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 45) + 1 to i*45) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_array_of_5_NeighbourHood is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_array_of_5_NeighbourHood(0 to slv'length / 45 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 45 to (i+1) * 45 - 1));
    end loop;
    return result;
  end;
end;

