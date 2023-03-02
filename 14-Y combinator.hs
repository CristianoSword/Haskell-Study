-- O Combinator Y é um conceito importante em programação funcional que permite 
-- a criação de funções recursivas anônimas (também conhecidas como funções lambda recursivas).
-- Ele é definido como uma função de ordem superior que recebe uma função como argumento e retorna uma versão recursiva dessa função.


-- Definindo a função Y como um combinador de funções de ordem superior
y :: (a -> a) -> a
y f = f (y f)

-- Exemplo de uma função recursiva que calcula o fatorial usando o Combinator Y
factorial :: Integer -> Integer
factorial = y (\f n -> if n == 0 then 1 else n * f (n-1))

-- Testando a função fatorial
main :: IO ()
main = do
    print $ factorial 0 -- retorna 1
    print $ factorial 5 -- retorna 120