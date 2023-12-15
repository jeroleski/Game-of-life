module Project where

import Clash.Prelude hiding ((++))
import Clash.HaskellPrelude
import Clash.Sized.Vector hiding ((++))
import Data.List hiding (foldr)
import Clash.Explicit.SimIO

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
playAndPrint :: KnownNat n => Int -> CGrid n -> String
playAndPrint 0 g = showMatrix g
playAndPrint i g = showMatrix g ++ playAndPrint (i-1) (play g)

topEntity :: CGrid 5
topEntity = iteratePlay 3 alterGrid
-- topEntity :: IO ()
-- topEntity = writeFile "test.txt" "hola perra"
-- topEntity :: IO String
-- topEntity = readFile "test.txt"
-- topEntity :: SimIO ()
-- topEntity = display "hola perra"

