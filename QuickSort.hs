module QuickSort where
import System.Random

{-
filter' :: (a -> Bool) -> [a] -> ([a], Int)
filter' _ [] = ([], 0)
filter' p (x:xs)   
    | p x       = let (xs', l) = filter' p xs in (x:xs', l+1)
    | otherwise = let (xs', l) = filter' p xs in (xs', l)

quick_sort []       _    _   = []
quick_sort l@(x:xs) seed len = quick_sort lower seed' len_l ++ [p] ++ quick_sort higher seed' len_h
  where (rand, seed') = randomR (0, len-1) seed
        (left, (p:right)) = splitAt rand l
        list = left ++ right
        (lower,  len_l) = filter' (< p)  list
        (higher, len_h) = filter' (>= p) list
-}

{-
quick_sort []       seed = []
quick_sort l@(x:xs) seed = quick_sort (filter (< p) list) seed' ++ [p] ++ quick_sort (filter (>= p) list) seed'
  where (rand, seed') = randomR (0, (length l) - 1) seed
        (left, (p:right)) = splitAt rand l
        list = left ++ right
-}

quick_sort []     = []
quick_sort (x:xs) = quick_sort (filter (< x) xs) ++ [x] ++ quick_sort (filter (>= x) xs)
