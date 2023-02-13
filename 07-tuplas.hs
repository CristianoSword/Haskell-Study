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
