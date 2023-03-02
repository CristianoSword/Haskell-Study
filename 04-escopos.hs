eq2grau :: Float -> Float -> Float -> Int
eq2grau a b c 
        | delta > 0 = 2
        | delta == 0 = 1
        | otherwise = 0
    where
        delta = b^2 -4*a*c

soma :: Int -> Int -> Int
soma  x y = let z = x + y
    in z + z*2 
