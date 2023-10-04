module Project where

import Clash.Prelude

import Types
import Interface
import Play

initGrid :: Grid
initGrid = [
    [Dead, Alive, Dead],
    [Dead, Dead, Alive],
    [Alive, Alive, Alive]
]

topEntity :: Types.Cell -> Signed 8
topEntity = next initGrid
