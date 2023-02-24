-- funcao :: tipo -> retorno
-- nome da funcao| instrução

polinomio :: Int -> Int
polinomio x = x*x + 10*x + 2

-- calcula o quadrado de um numero inteiro
quadrado :: Int -> Int
quadrado n = n*n

-- soma
soma :: Int -> Int -> Int
soma a b =  a + b

-- triplica
triplica :: Int -> Int
triplica var = var*3

--ex de palavras reservadas
--ghci> pred 5
--ghci> 4
--ghci> succ 5
--ghci> 6

-- number lucky -  verifica se o número dado é dois ou não.
lucky :: (Integral a) => a -> String  
lucky 7 = "DOIS! BINGO!"  
lucky x = "Desculpe, tente novamente!"   
