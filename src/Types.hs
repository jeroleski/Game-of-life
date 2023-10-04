module Types where

import Clash.HaskellPrelude

data Cell = Dead | Alive
type Grid = [[Cell]]

data NeighbourRow = NeighbourRow {w :: Cell, m :: Cell, e :: Cell}
data Neighbours = Neighbours {n :: NeighbourRow, c :: NeighbourRow, s :: NeighbourRow}

aliveIf :: Bool -> Cell
aliveIf False = Dead
aliveIf True = Alive

isAlive :: Cell -> Bool
isAlive Dead = False
isAlive Alive = True
