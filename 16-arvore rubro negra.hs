
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

