-- Rose tree
-- Rose tree (árvore-roseira) é uma estrutura de dados em Haskell que representa uma árvore enraizada, onde cada nó pode ter um número arbitrário de filhos.

data RoseTree a = Node a [RoseTree a]  -- define o tipo de dados para uma rose tree

-- cria uma rose tree que representa uma árvore de diretórios
directoryTree = Node "home" [
                   Node "user1" [
                       Node "documents" [],
                       Node "pictures" []
                   ],
                   Node "user2" [
                       Node "documents" [
                           Node "reports" []
                       ],
                       Node "pictures" []
                   ]
               ]

-- função que percorre a árvore e imprime cada valor
printTree (Node value []) = putStrLn value
printTree (Node value children) = do
    putStrLn value
    mapM_ printTree children

-- exemplo de uso
main = do
    printTree directoryTree
