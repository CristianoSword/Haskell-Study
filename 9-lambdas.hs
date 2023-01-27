//lambda tambem chamada de funcoes anonimas

//sem lambda
dobrarLista ls = map dobro ls
    where dobro x = 2 * x

//com lambda
dobrarLista ls = map (\x -> 2 * x) ls
