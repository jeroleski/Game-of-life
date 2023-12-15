module Project where

import Clash.Prelude hiding ((++))
import Clash.HaskellPrelude
import Clash.Sized.Vector hiding ((++))
import Data.List hiding (foldr)

import Types
import Interface
import Play
import Grid

-- | Play the Grid the given number of rounds
iteratePlay :: KnownNat n => Int -> CGrid n -> CGrid n
iteratePlay 0 g = g
iteratePlay i g = iteratePlay (i-1) (play g)

-- | Play the Grid the given number of rounds and concatenate each iteration as a String 
playAndPrint :: KnownNat n => Int -> CGrid n -> String
playAndPrint 0 g = showMatrix g
playAndPrint i g = showMatrix g ++ playAndPrint (i-1) (play g)

topEntity :: String
topEntity = playAndPrint nRounds grid
