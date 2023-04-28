
-- Avores rubro negras ou Red-Black Tree

    --        (B)                    (B)
    --       /   \                  /   \
    --     (R)   (R)      =>      (B)   (B)
    --     /       \              /     / \
    --   (B)       (B)          (R)   (R) (R)
    --             / \
    --           (R) (R)


-- Neste exemplo, a árvore rubro-negra começa com um nó preto (B), que tem dois filhos vermelhos (R). Para manter a propriedade
-- de que um nó vermelho só pode ter filhos pretos, a árvore é reequilibrada fazendo a rotação à esquerda, tornando o
-- filho esquerdo vermelho e os filhos direitos pretos.
-- Depois da rotação, a árvore mantém sua estrutura balanceada e todas as propriedades de uma árvore rubro-negra são preservadas.

data Color = Red | Black
data Tree a = Leaf | Node Color (Tree a) a (Tree a)

insert :: Ord a => a -> Tree a -> Tree a
insert x s = makeBlack (ins s)
  where
    ins Leaf = Node Red Leaf x Leaf
    ins (Node color a y b)
      | x < y = balance color (ins a) y b
      | x > y = balance color a y (ins b)
      | otherwise = Node color a y b

balance :: Color -> Tree a -> a -> Tree a -> Tree a
balance Black (Node Red (Node Red a x b) y c) z d = Node Red (Node Black a x b) y (Node Black c z d)
balance Black (Node Red a x (Node Red b y c)) z d = Node Red (Node Black a x b) y (Node Black c z d)
balance Black a x (Node Red (Node Red b y c) z d) = Node Red (Node Black a x b) y (Node Black c z d)
balance Black a x (Node Red b y (Node Red c z d)) = Node Red (Node Black a x b) y (Node Black c z d)
balance color a x b = Node color a x b

makeBlack :: Tree a -> Tree a
makeBlack Leaf = Leaf
makeBlack (Node _ a x b) = Node Black a x b

