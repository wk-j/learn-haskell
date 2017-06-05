-- (script)

{-# LANGUAGE Arrows #-}

module Main where

f :: (Int, Int, Int) -> (Int, Int, Int, Int)
f = proc (a,b,c) -> do
    d <- (+1) -< a
    e <- uncurry div -< (d,c)
    f <- negate -< b
    g <- (*2) -< b
    return -< (d,e,f,g)

main = 
    putStrLn "Hello"
