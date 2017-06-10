-- (script)
module Main1 where

main = do
    putStrLn "Please enter you birth year"
    year <- getLine
    putStrLn $ "In 2020, you will be: " ++ show (2020 - read year)