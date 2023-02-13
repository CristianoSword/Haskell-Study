import Control.Concurrent

{-
	MVar: sincronização entre threads
	Documentação: https://hackage.haskell.org/package/base-4.7.0.2/docs/Control-Concurrent-MVar.html
-}

-- primeiro exemplo
main = do

	-- cria uma MVar que inicialmente é vazia
	m <- newEmptyMVar
	-- putMVar coloca um valor numa MVar
	forkIO $ putMVar m 'x'
	-- takeMVar retorna o conteúdo da MVar
	r <- takeMVar m
	print r


-- utilizando MVar
main2 = do
	m <- newEmptyMVar

	forkIO $ putMVar m "Hello Haskell"
	forkIO $ putMVar m "Hello MVar"

	r <- takeMVar m
	print r
	r <- takeMVar m
	print r
	print "Fim :)"


-- sem utilizar MVar
main3 = do
	let msg1 = "Hello Haskell"
	let msg2 = "Hello MVar"

	forkIO $ print msg1
	forkIO $ print msg2
	print "Fim :)"
