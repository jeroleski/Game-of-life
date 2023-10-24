module Types where

import Clash.HaskellPrelude

data Cell = Dead | Alive
type Row = [Cell]
type Grid = [Row]

data NeighbourRow = NeighbourRow {w :: Cell, m :: Cell, e :: Cell}
data NeighbourHood = NeighbourHood {n :: NeighbourRow, c :: NeighbourRow, s :: NeighbourRow}

aliveIf :: Bool -> Cell
aliveIf False = Dead
aliveIf True = Alive

isAlive :: Cell -> Bool
isAlive Dead = False
isAlive Alive = True

center :: NeighbourHood -> Cell
center = m . c

aliveNeighbours :: NeighbourHood -> Int
aliveNeighbours h = (length . filter isAlive) [w (n h), m (n h), e (n h), w (c h), e (c h), w (s h), m (s h), e (s h)]
