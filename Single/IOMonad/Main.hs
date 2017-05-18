module Main where

{-#
main :: IO ()
main = putStrLn "What is your name?" >>
       getLine >>= \n -> putStrLn ("Hello, " ++ n)
#-}

main :: IO()
main = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Hello " ++ name)
