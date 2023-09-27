module Play where

import Types

round :: Grid -> Grid
round g = 

iterate :: Int -> Grid -> Grid
iterate n g = iterate (n-1) (round g)
