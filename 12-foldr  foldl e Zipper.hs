-- 12- foldr foldl e zipper
myzip = foldr step (const []) :: [a] -> [b] -> [(a,b)]
    where step a f (b:bs) = (a,b):(f bs)
          step a f [] = []

-- fold
"fold" (+) [1,2,3,4,5]
-- => 1+2+3+4+5

"fold" (-) [1,2,3,4,5]
-- => 1-2-3-4-5   ???

foldr ->  1 - (2 - (3 - (4 - ( 5 - init)))

foldl -> (((init - 1) - 2) - 3) - 4) - 5
