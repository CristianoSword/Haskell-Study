-- tupla eh uma colecao de valores, que podem ser ou nao de tipos diferentes
-- similar com uma struct de c/c++

-- type Aluno = (String, int) -- nome, nota

type NomeAluno = String
type MediaNota = Int

type Aluno = (NomeAluno, MediaNota)  -- nome, nota
type Turma = [Aluno]

aprovado :: Turma -> Int -> [NomeAluno]
aprovado tma nota = [nome | (nome, media) <- tma, media >= nota]

-- Exemplo terminal

-- ghci> turma = [("joao", 9), ("pedro", 5), ("maria", 6), ("bia", 7)]
-- ghci> aprovado turma 5
-- ["joao","pedro","maria","bia"]

type Data = (Int,Int,Int)

bissexto:: Int-> Bool
bissexto x | (mod x 400 == 0) = True
           | (mod x 4 == 0) && (mod x 100 /= 0) = True
           | otherwise = False

valida::Data->Bool
valida (d,m,a)
            | d >= 1 && d <= 31 && (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) = True
            | d >= 1 && d <= 30 && (m == 4 || m == 6 || m == 9 || m == 11) = True
            | d >= 1 && d <= 28 && m == 2 && not (bissexto a) = True
            | d >= 1 && d <= 29 && m == 2 && (bissexto a) = True
            | otherwise = False

-- 
ghci> let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]  
ghci> rightTriangles'  
[(6,8,10)]  
