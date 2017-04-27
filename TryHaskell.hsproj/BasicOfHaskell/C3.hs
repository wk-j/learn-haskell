module BasicOfHaskell.C3 where

v1 = print $ undefined + 1

-- Lazyness
-- foo never evaluates its arguemnts "undefined"
foo x = 1
v2 = print $ (foo undefined) + 1

v3 = do
  putStrLn "The anwer is :"
  print 43
  
v4 = do
  str <- getLine
  putStrLn str
