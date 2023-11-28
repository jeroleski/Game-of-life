module Utils where

import Clash.HaskellPrelude
import Clash.Prelude
import Clash.Sized.Vector


{- | Maps a list where the transformer function need 3 consecitive elements at once
Excludes the last element
f :: transformation function
d :: default value for last entry
xs :: the list to map from
-}
innerMap3elm :: (a -> a -> a -> b) -> a -> Vec (n+1) a -> Vec n b
innerMap3elm f d (x `Cons` Nil) = Nil
innerMap3elm f d (x `Cons` (y `Cons` Nil)) = f x y d `Cons` Nil
innerMap3elm f d (x `Cons` (y `Cons` (z `Cons` xs))) = f x y z `Cons` map3elm f d (y `Cons` (z `Cons` xs))

{- | Maps a list where the transformer function need 3 consecitive elements at once
f :: transformation function
d :: default value for first and last entry
xs :: the list to map from
-}
map3elm :: (a -> a -> a -> b) -> a -> Vec n a -> Vec n b
map3elm f d xs = innerMap3elm f d (d `Cons` xs)

{- | Maps the elements of 3 lists into one list
f :: transformation function
xs / ys / zs :: lists to map from
-}
map3sim :: (a -> b -> c -> d) -> Vec n a -> Vec n b -> Vec n c -> Vec n d
map3sim _ Nil Nil Nil = Nil
map3sim f (x `Cons` xs) (y `Cons` ys) (z `Cons` zs) = f x y z `Cons` map3sim f xs ys zs

{- | Count the number of elements in a list that satisfies a condition
f :: the condition for the elements to be counted
-}
count :: (a -> Bool) -> Vec n a -> Int
count f = foldr (\x acc -> if f x then acc+1 else acc) 0
