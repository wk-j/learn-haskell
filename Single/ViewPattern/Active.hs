-- (script)
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

module Active where

import Text.Read

-- pattern FizzBuzz n  <- mod n 5 -> 0 && mod n 3 -> 0
pattern FizzBuzz    <-  (mod 4 -> 0)
pattern Fizz        <- ((`mod` 5) -> 0)
pattern Buzz        <- ((`mod` 3) -> 0)

pattern Even <- ((`mod` 2) -> 0)
pattern Odd  <- ((`mod` 2) -> 1)

f :: Int -> String
f n = case n of
    Even -> show n ++ " is event"
    Odd  -> show n ++ " is odd"
    _ -> show "..."

h n = case n of
  FizzBuzz  -> "fizzbuzz"
  Fizz      -> "fizz"
  Buzz      -> "buzz"
  _         -> "" 

pattern IntLiteral :: Int -> String
pattern IntLiteral i <- (readMaybe -> Just i)

g :: String -> String
g n = case n of
    IntLiteral i -> show i ++ " is a valid int literal"
    _ -> n ++ " is an invalid int liternal"

main :: IO()
main = do
    putStrLn $ f 10
    putStrLn $ f 5

    putStrLn $ h 4
    putStrLn $ h 5
    putStrLn $ h 3

    putStrLn $ g "100"
    putStrLn $ g "100."
