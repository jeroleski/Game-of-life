module Play where

import Types
import Clash.HaskellPrelude hiding (round)
import Data.List hiding (iterate)

transform :: Cell -> Int -> Cell
transform Dead n = aliveIf $ n == 3
transform Alive n = aliveIf $ n <= 2 && n <= 3

nNeighbours :: Neighbours -> Int
nNeighbours h = (length . filter isAlive) [w (n h), m (n h), e (n h), w (c h), e (c h), e (s h), m (s h), e (s h)]

next :: Neighbours -> Cell
next n = transform (m (c n)) (nNeighbours n)

foldr3 :: (a -> a -> a -> b -> b) -> b -> [a] -> b
foldr3 f acc (x:y:z:xs) = f x y z (foldr3 f acc (y:z:xs))
foldr3 _ acc _ = acc

foldr3sim :: (a -> b -> c -> d -> d) -> d -> [a] -> [b] -> [c] -> d
foldr3sim f acc (x:xs) (y:ys) (z:zs) = f x y z (foldr3sim f acc xs ys zs)
foldr3sim _ acc _ _ _ = acc

n2g :: [[Neighbours]] -> Grid
n2g = (map . map) next

g2nr :: Grid -> [[NeighbourRow]]
g2nr = foldr3 (\x y z acc -> 
        ((foldr3sim (\a b c acc2 -> 
                (NeighbourRow a b c):acc2))
            [] x y z):acc)
    []

nr2n :: [[NeighbourRow]] -> [[Neighbours]]
nr2n = foldr3 (\x y z acc -> 
        ((foldr3sim (\a b c acc2 ->
                (Neighbours a b c):acc2))
            [] x y z):acc)
    [] 

round :: Grid -> Grid
round g = n2g n where
    nr = g2nr g
    n = nr2n nr
    --foldr3 (\x y z acc -> foldr3sim (\a b c acc2 -> (NeighbourRow a b c):acc2) [] x y z) [] g
-- next g = (map . map) (\neigh -> transform (m (c neigh)) (nNeighbours neigh)) ns where
--     n = foldr3 (\x y z acc -> (NeighbourRow x y z):acc) [] g
--     ns = foldr3 (\x y z acc -> (Neighbours x y z):acc) [] n

iterate :: Int -> Grid -> Grid
iterate 0 g = g
iterate n g = iterate (n-1) (round g)
