-- sempre atribuindo as variaveis de parametro ao escopo do campo da condicional
maior :: Int -> Int -> Int
maior a b = if (a >= b)
     then a
     else b

-- condicional com guard, similar ao switch case do C++
fatorial :: Int -> Int
fatorial n
    | n == 0 = 1
    | n  > 0 = n * (fatorial (n-1))
--  | otherwise = 0

charcase :: Char -> String
charcase ch | ch >= 'a' && ch <= 'z' = "Minusculo"
            | ch >= 'A' && ch <= 'Z' = "Maiusculo"
            | otherwise = "Desconhecido" 
