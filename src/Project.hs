module Project where

import Clash.Prelude

import Types
import Interface
import Play

myFunc :: Types.Cell -> Signed 8
myFunc a = 9

topEntity :: Types.Cell -> Signed 8
topEntity = myFunc