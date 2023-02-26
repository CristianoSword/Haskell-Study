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

-- Ordenacao de listas: Quicksort
qsort :: [Int] -> [Int]
qsort [] = []
qsort (head:tail) = qsort [y | y <- tail, y < head] --menores que pivo
                    ++ [head] -- o pivo
                    ++ qsort [y | y <- tail, y >= head]
                    
-- A lista maior é simplesmente cortada para combinar com o tamanho da outra menor. Como Haskell é preguiçoso, nós podemos "zippar" listas finitas com listas infinitas:
zip [5,3,2,6,2,7,2,5,4,6,6] ["eu","sou","uma", "tartaruga"]  
--output ghci> [(5,"eu"),(3,"sou"),(2,"uma"),(6,"tartaruga")]  

zip [1..] ["banana", "laranja", "melancia", "uva"]  
--output ghci> [(1,"banana"),(2,"laranja"),(3,"melancia"),(4,"uva")]  

-- em Haskell uma lista é definida recursivamente 
data [a] = [] | a : [a]
