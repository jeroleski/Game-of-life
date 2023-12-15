module Parser where

import Data.List
import System.IO.Unsafe
import System.Environment

data Cell = Dead | Alive
type Grid = [[Cell]]

-- SHOW

showCell :: Cell -> String
showCell Dead = "Dead"
showCell Alive = "Alive"

showGrid :: Grid -> String
showGrid g = showCols g ++ "Nil)" where
    showCols = foldl (\acc r -> acc ++ showRow r ++ "Nil) :> ") "("
    showRow = foldl (\acc c -> acc ++ showCell c ++ " :> ") "("

showForClash :: Grid -> Int -> String
showForClash g i = 
    "module Grid where\n\n" ++
    "import Clash.HaskellPrelude\n" ++
    "import Clash.Sized.Vector\n" ++
    "import Types\n\n" ++
    "nRounds :: Int\n" ++
    "nRounds = " ++ show i ++ "\n\n" ++
    "grid :: CGrid " ++ show (length g) ++ "\n" ++
    "grid = " ++ showGrid g ++ "\n"

-- PARSE

parseCell :: Char -> Cell
parseCell '.' = Dead
parseCell '#' = Alive
parseCell c = error $ "Cannot parse '" ++ show c ++ "' as a cell."

parseGrid :: String -> Grid
parseGrid = extractLast . parseCols where
    parseCols = foldr putInRow ([], [])
    putInRow '\n' (cur, rows) = ([], cur:rows)
    putInRow c (cur, rows) = (parseCell c:cur, rows)
    extractLast ([], rows) = rows
    extractLast (cur, rows) = cur:rows

verifyGrid :: Grid -> Bool
verifyGrid (r:rs) = verifyRows (length r) rs where
    verifyRows len = foldr (\r ok -> length r == len && ok) True
verifyGrid _ = True

makeGrid :: String -> Grid
makeGrid s = check (g, ok) where
    g = parseGrid s
    ok = verifyGrid g
    check (x, True) = x
    check (_, False) = error "Grid has irregular row lengths."

-- UTILS

readGridFrom :: String -> Grid
readGridFrom = makeGrid . unsafePerformIO . readFile


parseArgs :: () -> (String, Int)
parseArgs _ = (getFile args, getIter args) where
    args = unsafePerformIO getArgs
    getFile (f:_) = f
    getFile _ = error "No .gol file specified."
    iter = getIter args
    getIter (_:i:_) = read i
    getIter _ = 0

main :: IO ()
main = writeFile "./src/Grid.hs" s where
    (file, iter) = parseArgs ()
    g = readGridFrom file
    s = showForClash g iter
