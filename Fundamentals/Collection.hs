-- (script)
module Collection where

data List a = Empty | Cons a (List a)

main :: IO()
main =  do
    putStrLn "Hello, world!"
