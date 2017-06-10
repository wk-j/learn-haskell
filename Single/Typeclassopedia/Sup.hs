-- (script)
module Sup where

import Data.Functor


main = do
    let a = (+1) <$> [1,2,3,4]
    putStrLn $ show a
    putStrLn $ show b