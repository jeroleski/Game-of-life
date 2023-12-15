module Play where

import Clash.HaskellPrelude
import Clash.Prelude
import Clash.Sized.Vector

import Types
import Utils

-- | Given a NeighborHood counts the number of Alive Cells around the center
aliveNeighbors :: NeighborHood -> Int
aliveNeighbors h = count isAlive (w (n h) :> m (n h) :> e (n h) :> w (c h) :> e (c h) :> w (s h) :> m (s h) :> e (s h) :> Nil)

-- | The outcome of a Cell given its number of Alive Neigbours
transform :: Cell -> Int -> Cell
transform Dead n = aliveIf $ n == 3
transform Alive n = aliveIf $ n >= 2 && n <= 3

-- | The next Cell given its Neighbors
next :: NeighborHood -> Cell
next n = transform (center n) (aliveNeighbors n)

-- | Given a grid of cells will transform each row into a row of NeighborRow
-- Uses Dead as the default value for the boarder
g2nr :: CGrid n -> RGrid n
g2nr = map (map3elm NeighborRow Dead)

-- | Given a grid of NeighborRows will transform it into grid of NeighborHoods
-- Uses (NeighborRow Dead Dead Dead) as default for the boarder
nr2nh :: KnownNat n => RGrid n -> HGrid n
nr2nh = map3elm (map3sim NeighborHood) (repeat $ NeighborRow Dead Dead Dead)

-- | Given a grid of NeighborHoods will 2D map them into the Grids next state
nh2g :: HGrid n -> CGrid n
nh2g = (map . map) next

-- | Iterate a Grid to find the next states of its Cells
play :: KnownNat n => CGrid n -> CGrid n
play = nh2g . nr2nh . g2nr
