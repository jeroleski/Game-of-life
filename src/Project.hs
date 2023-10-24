module Project where

import Clash.Prelude
import Clash.HaskellPrelude

import Types
import Interface
import Play

initGrid :: Grid
initGrid = [
        [Dead, Dead, Dead, Dead, Dead, Dead, Dead],
        [Dead, Dead, Dead, Dead, Dead, Dead, Dead],
        [Dead, Dead, Dead, Alive, Dead, Dead, Dead],
        [Dead, Dead, Dead, Dead, Alive, Dead, Dead],
        [Dead, Dead, Alive, Alive, Alive, Dead, Dead],
        [Dead, Dead, Dead, Dead, Dead, Dead, Dead],
        [Dead, Dead, Dead, Dead, Dead, Dead, Dead]
    ]

initGrid2 :: Grid
initGrid2 = [
        [Dead, Dead, Dead, Dead, Dead],
        [Dead, Dead, Alive, Dead, Dead],
        [Dead, Dead, Alive, Dead, Dead],
        [Dead, Dead, Alive, Dead, Dead],
        [Dead, Dead, Dead, Dead, Dead]
    ]

-- | Play the Grid the given number of rounds
iteratePlay :: Int -> Grid -> Grid
iteratePlay 0 g = g
iteratePlay n g = iteratePlay (n-1) (play g)

-- | Play the Grid the given number of rounds and concatenate each iteration as a String 
playAndPrint :: Int -> Grid -> String
playAndPrint 0 g = showGrid g
playAndPrint n g = showGrid g ++ playAndPrint (n-1) (play g)

topEntity :: String
topEntity = show $ iteratePlay 1 initGrid

main :: IO ()
main = putStr $ playAndPrint 3 initGrid2
-- main = putStr $ showNhGrid ((nr2n (g2nr initGrid2)))
-- main = putStr $ showQ (q (nr2n (g2nr initGrid2)))
