-- listas
-- calcula o comprimento de uma lista
compr :: [Int] -> Int
compr [] = 0
compr (head:tail) = 1 + compr tail

