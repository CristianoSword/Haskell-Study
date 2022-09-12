-- recursao comum
potencia2 :: Int -> Int
potencia2 n
    | n == 0 = 1
    | n  > 0 = 2 * potencia2 (n-1)
    
-- Recursao em cauda
potencia2cauda :: Int -> Int -> Int
potencia2cauda n acumulado
    | n == 0 = acumulado
    | n  > 0 = potencia2cauda (n-1) (2*acumulado)