-- 12- foldr foldl e zipper
myzip = foldr step (const []) :: [a] -> [b] -> [(a,b)]
    where step a f (b:bs) = (a,b):(f bs)
          step a f [] = []
