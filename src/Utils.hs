module Utils where

import Clash.HaskellPrelude
import Clash.Prelude
import Clash.Sized.Vector

{- | Folds over a list taking 3 elements per fold
f :: folding function with 3 parameters and an acumilator
acc :: the initial accumilator
xs :: list which is folded over
d :: default value when 1 or 2 elements in the list
-} --TODO remove
foldr3elm :: (a -> a -> a -> b -> b) -> a -> b -> Vec n a -> b
foldr3elm f d acc (x `Cons` (y `Cons` (z `Cons` xs))) = f x y z (foldr3elm f d acc (y `Cons` (z `Cons` xs)))
foldr3elm f d acc (x `Cons` (y `Cons` Nil)) = f x y d acc
foldr3elm _ _ acc _ = acc

{- | Maps a list where the transformer function need 3 consecitive elements at once
f :: transformation function
d :: default value for the first and last entry
xs :: the list to map from
-}
-- map3elm :: (a -> a -> a -> b) -> a -> Vec n a -> Vec n b
-- map3elm f d xs = foldr3elm (\x1 x2 x3 acc -> f x1 x2 x3 `Cons` acc) d Nil (d `Cons` xs)
map3elm :: (a -> a -> a -> b) -> a -> Vec (n+1) a -> Vec n b
--map3elm _ _ Nil = Nil
map3elm f d (x `Cons` Nil) = Nil
map3elm f d (x `Cons` (y `Cons` Nil)) = f x y d `Cons` Nil
map3elm f d (x `Cons` (y `Cons` (z `Cons` xs))) = f x y z `Cons` map3elm f d (y `Cons` (z `Cons` xs))
--TODO add default in first itration

map3elmDefault :: (a -> a -> a -> b) -> a -> Vec n a -> Vec n b
map3elmDefault f d xs = map3elm f d (d `Cons` xs)



{- | Maps the elements of 3 lists into one list
f :: transformation function
-}
-- map3sim :: (a -> b -> c -> d) -> Vec n a -> Vec n b -> Vec n c -> Vec n d
-- map3sim f = foldr3sim (\x y z acc -> f x y z `Cons` acc) Nil

map3sim :: (a -> b -> c -> d) -> Vec n a -> Vec n b -> Vec n c -> Vec n d
map3sim _ Nil Nil Nil = Nil
map3sim f (x `Cons` xs) (y `Cons` ys) (z `Cons` zs) = f x y z `Cons` map3sim f xs ys zs


--TODO add docs
count :: (a -> Bool) -> Vec n a -> Int
count f = foldr (\x acc -> if f x then acc+1 else acc) 0
