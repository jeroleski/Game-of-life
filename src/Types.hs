module Types where

import Clash.HaskellPrelude
import Clash.Prelude
import Clash.Sized.Vector

type Matrix n m a = Vec n (Vec m a)

data Cell = Dead | Alive
type CGrid n = Matrix n n Cell

data NeighbourRow = NeighbourRow {w :: Cell, m :: Cell, e :: Cell}
type RGrid n = Matrix n n NeighbourRow
data NeighbourHood = NeighbourHood {n :: NeighbourRow, c :: NeighbourRow, s :: NeighbourRow}
type HGrid n = Matrix n n NeighbourHood

aliveIf :: Bool -> Cell
aliveIf False = Dead
aliveIf True = Alive

isAlive :: Cell -> Bool
isAlive Dead = False
isAlive Alive = True

center :: NeighbourHood -> Cell
center = m . c
