-- (script)
module Collection where

import Data.Set

data List a = Empty | Cons a (List a)


main :: IO()
main =  do
    putStrLn "Hello, world!"


