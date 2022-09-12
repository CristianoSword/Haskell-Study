-- listas
-- calcula o comprimento de uma lista
compr :: [Int] -> Int
compr [] = 0
compr (head:tail) = 1 + compr tail

-- calculando o cubo e cubo de uma lista
cubo:: Int -> Int
cubo x = x * x * x

aoCubo :: [Int] -> [Int]
aoCubo [] = []
aoCubo (head:tail) = cubo(head) : aoCubo tail