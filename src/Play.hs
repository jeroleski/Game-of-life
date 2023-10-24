module Play where

import Types
import Utils
import Clash.HaskellPrelude
import Data.List

-- | The outcome of a Cell given its number of Alive Neigbours
transform :: Cell -> Int -> Cell
transform Dead n = aliveIf $ n == 3
transform Alive n = aliveIf $ n >= 2 && n <= 3

-- | The next Cell given its Neighbours
next :: NeighbourHood -> Cell
next n = transform (center n) (aliveNeighbours n)

-- | Given a grid of cells will transform each row into a row of NeighbourRow
-- Uses Dead as the default value for the boarder
g2nr :: Grid -> [[NeighbourRow]]
g2nr = map (map3elm NeighbourRow Dead)

-- | Given a grid of NeighbourRows will transform it into grid of NeighbourHoods
-- Uses (NeighbourRow Dead Dead Dead) as default for the boarder
nr2nh :: [[NeighbourRow]] -> [[NeighbourHood]]
nr2nh = map3elm (map3sim NeighbourHood) (repeat $ NeighbourRow Dead Dead Dead)

-- | Given a grid of NeighbourHoods will 2D map them into the Grids next state
nh2g :: [[NeighbourHood]] -> Grid
nh2g = (map . map) next

-- | Iterate a Grid to find the next states of its Cells
play :: Grid -> Grid
play = nh2g . nr2nh . g2nr
