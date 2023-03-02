-- Em Haskell, um Monoid é uma classe de tipos que representa um tipo de dados com uma
-- operação binária associativa e um elemento identidade.

-- Definindo um tipo de dado para representar números inteiros com a operação de soma
newtype Sum a = Sum { getSum :: a } deriving (Eq, Ord, Show)

-- Implementando a instância de Monoid para o tipo Sum
instance Num a => Monoid (Sum a) where
    mempty = Sum 0 -- o elemento identidade é 0
    mappend (Sum x) (Sum y) = Sum (x + y) -- a operação binária é a soma

-- Testando a implementação
main :: IO ()
main = do
    let s1 = Sum 1
        s2 = Sum 2
        s3 = Sum 3
    print $ mappend s1 mempty -- retorna Sum {getSum = 1}
    print $ mappend mempty s2 -- retorna Sum {getSum = 2}
    print $ mappend s1 s2 -- retorna Sum {getSum = 3}
    print $ mconcat [s1, s2, s3] -- retorna Sum {getSum = 6}
