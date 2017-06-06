-- (script)

{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

module Main where

import Text.Printf

pattern Even <- ((`mod` 2) -> 0)
pattern Odd <- ((`mod` 2) -> 1)

check :: Int -> String
check input = 
    case input of
        Even -> printf "%d is even" input
        Odd  -> printf "%d is odd"  input


main :: IO ()
main = do
    putStrLn $ check 100
    putStrLn $ check 101