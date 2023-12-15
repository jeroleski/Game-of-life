module Interface where

import Clash.HaskellPrelude
import Clash.Sized.Vector hiding ((++))
import Data.List hiding (foldr, map)

import Types
import Utils

instance Show Cell where
    show Dead = "."
    show Alive = "#"

showVec :: Show a => Vec n a -> String
showVec Nil = "\n"
showVec (x `Cons` xs) = show x ++ showVec xs

showMatrix :: Show a => Matrix n m a -> String
showMatrix = foldr (\row acc -> acc ++ showVec row) ""

