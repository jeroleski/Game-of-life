module Types where

import Clash.HaskellPrelude
import Clash.Prelude
import Clash.Sized.Vector

-- | The value of a single Cell
data Cell = Dead | Alive
-- | The Cells to the west and east
data NeighborRow = NeighborRow {w :: Cell, m :: Cell, e :: Cell}
-- | The Cells to the north and south along with their west and east neighbors
data NeighborHood = NeighborHood {n :: NeighborRow, c :: NeighborRow, s :: NeighborRow}

{- The standard 2D list type
n :: lenth of the outer list
m :: length of all inner lists
a :: the types stored in the matrix
-}
type Matrix n m a = Vec n (Vec m a)
-- | Matrix types for Cells and Neighbors
type CGrid n = Matrix n n Cell
type RGrid n = Matrix n n NeighborRow
type HGrid n = Matrix n n NeighborHood

-- | Convert a True condition to an Alive Cell
aliveIf :: Bool -> Cell
aliveIf False = Dead
aliveIf True = Alive

-- | Check if a Cell is Alive
isAlive :: Cell -> Bool
isAlive Dead = False
isAlive Alive = True

-- | Extract the center cell from the 9 surounding Neighbors
center :: NeighborHood -> Cell
center = m . c
