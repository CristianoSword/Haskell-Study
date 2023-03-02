-- Pattern Matching/ casamento de padroes
-- sempre analisado de cima pra baixo, como de forma procedural tipo asm
padroes1 :: Int -> String
padroes1 1 = "um!"
padroes1 2 = "dois!"
padroes1 3 = "tres!"
padroes1 x = "Nao esta entre 1 e 3!"


padroes2 :: [Int] -> Int
padroes2 [] = 0 -- pattern para caso base
padroes2 (_:t) = 1 + padroes2 t -- pattern caso seja recursivo

type Tupla4 = (Int, Int, Int, Int)      --Define tipo 4 tupla
padroes3 :: Tupla4 -> String
padroes3 (_, _, _, fourth) 
            | fourth >10 = "Maior que 10."
            | otherwise = "Nao maior que 10."

-- exemplo terminal
-- padroes2 [x | x <- [1..100], mod x 2 == 0]
--saida: 50

-- padroes3 (100, 2, 35, 40)
--saida: "Maior que 10."
