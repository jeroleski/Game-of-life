module Grid where

import Clash.HaskellPrelude
import Clash.Sized.Vector
import Types

nRounds :: Int
nRounds = 6

grid :: CGrid 10
grid = ((Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Alive :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Alive :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Alive :> Alive :> Alive :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> (Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Dead :> Nil) :> Nil)
