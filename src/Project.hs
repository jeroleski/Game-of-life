module Project where

import Clash.Prelude
import Clash.HaskellPrelude
import Clash.Sized.Vector

import Types
import Interface
import Play

initGrid :: CGrid 5
initGrid = (
        (Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :>
        (Dead :> Dead :> Alive :> Dead :> Dead :> Nil) :>
        (Dead :> Dead :> Alive :> Dead :> Dead :> Nil) :>
        (Dead :> Dead :> Alive :> Dead :> Dead :> Nil) :>
        (Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :>
        Nil
    )

alterGrid :: CGrid 5
alterGrid = (
        (Dead :> Alive :> Dead :> Alive :> Dead :> Nil) :>
        (Alive :> Dead :> Alive :> Dead :> Alive :> Nil) :>
        (Dead :> Alive :> Dead :> Alive :> Dead :> Nil) :>
        (Alive :> Dead :> Alive :> Dead :> Alive :> Nil) :>
        (Dead :> Alive :> Dead :> Alive :> Dead :> Nil) :>
        Nil
    )

-- | Play the Grid the given number of rounds
iteratePlay :: KnownNat n => Int -> CGrid n -> CGrid n
iteratePlay 0 g = g
iteratePlay i g = iteratePlay (i-1) (play g)

-- | Play the Grid the given number of rounds and concatenate each iteration as a String 
-- playAndPrint :: Int -> Grid -> String
-- playAndPrint 0 g = showGrid g
-- playAndPrint i g = showGrid g ++ playAndPrint (i-1) (play g)

topEntity :: CGrid 5
topEntity = iteratePlay 3 alterGrid
