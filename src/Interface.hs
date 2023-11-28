module Interface where

import Types
import Data.List
import Clash.HaskellPrelude

-- -- showCell :: Cell -> String
-- -- showCell Dead = "."
-- -- showCell Alive = "#"
-- -- showCell :: Cell -> String
-- -- showCell Dead = "."
-- -- showCell Alive = "#"

instance Show Cell where
    show Dead = "."
    show Alive = "#"

-- showGrid :: Grid -> String
-- showGrid g = showCols g ++ "\n" where
--     showRow = foldr (\c acc -> show c ++ acc) ""
--     showCols = foldr (\r acc -> showRow r ++ "\n" ++ acc) ""

-- -- instance Show Grid where
-- --     show g = showCols g ++ "\n" where
-- --         showCols = foldr (\r acc -> show r ++ "\n" ++ acc) ""

-- showNr :: NeighbourRow -> String
-- showNr nr = "|" ++ show (w nr) ++ show (m nr) ++ show (e nr)

-- showNrGrid :: [[NeighbourRow]] -> String
-- showNrGrid = foldr (\r acc -> foldr (\c acc2 -> showNr c ++ acc2) "|\n" r ++ acc) "\n"

-- showNh :: NeighbourHood -> String
-- showNh nh = "|" ++ showNr (n nh) ++ showNr (c nh) ++ showNr (s nh)

-- showNhGrid :: [[NeighbourHood]] -> String
-- showNhGrid = foldr (\r acc -> foldr (\c acc2 -> showNh c ++ acc2) "\n" r ++ acc) "\n"

-- nh2alive :: [[NeighbourHood]] -> [[Int]]
-- nh2alive = (map . map) aliveNeighbours

-- showIntGrid :: [[Int]] -> String
-- showIntGrid = foldr (\r acc -> foldr (\c acc2 -> "|" ++ show c ++ acc2) "|\n" r ++ acc) "\n"
