module Interface where

import Types
import Data

show :: Cell -> String
show Dead = "."
show Alive = "#"

show :: Grid -> String
show g = showGrid where
    showGrid = foldr (\r acc -> showRow r ++ "\n" ++ acc) ""
    showRow = foldr (\c acc -> show c:acc) ""
