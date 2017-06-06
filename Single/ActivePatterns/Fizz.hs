-- (script)

{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

module Fizz where

import Text.Printf
import Control.Arrow


foo :: { bar :: String | rest } -> { baz :: Int | rest }
foo {x | rest } = rest { baz = 1 }


pattern FizzBuzz <- ((`mod` 5) &&& (`mod` 3) -> (0,0))
pattern Fizz <- ((`mod` 3) -> 0)
pattern Buzz <- ((`mod` 5) -> 0)


fb input =
    case input of
        FizzBuzz -> "FizzBuzz"
        Fizz -> "Fizz"
        Buzz -> "Buzz"
        _ -> show input


main = do
    let rs = map fb [1,3,5,15]
    mapM_ putStrLn rs


