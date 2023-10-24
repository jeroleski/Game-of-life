module Utils where

{- | Folds over a list taking 3 elements per fold
f :: folding function with 3 parameters and an acumilator
acc :: the initial accumilator
xs :: list which is folded over
d :: default value when 1 or 2 elements in the list
-}
foldr3elm :: (a -> a -> a -> b -> b) -> a -> b -> [a] -> b
foldr3elm f d acc (x:y:z:xs) = f x y z (foldr3elm f d acc (y:z:xs))
foldr3elm f d acc [x, y] = f x y d acc
foldr3elm _ _ acc _ = acc

{- | Maps a list where the transformer function need 3 consecitive elements at once
f :: transformation function
d :: default value for the first and last entry
xs :: the list to map from
-}
map3elm :: (a -> a -> a -> b) -> a -> [a] -> [b]
map3elm f d xs = foldr3elm (\x1 x2 x3 acc -> f x1 x2 x3:acc) d [] (d:xs)

{- | Folds simultaneously over 3 lists taking 1 element from each per fold
Stops when any list is empty
f :: folding function with 3 parameters and an acumilator
acc :: the initial accumilator
xs / ys / zs :: lists which is folded over
-}
foldr3sim :: (a -> b -> c -> d -> d) -> d -> [a] -> [b] -> [c] -> d
foldr3sim f acc (x:xs) (y:ys) (z:zs) = f x y z (foldr3sim f acc xs ys zs)
foldr3sim _ acc _ _ _ = acc

{- | Maps the elements of 3 lists into one list
f :: transformation function
-}
map3sim :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
map3sim f = foldr3sim (\x y z acc -> f x y z:acc) []
