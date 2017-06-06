{-# LANGUAGE  PatternSynonyms, ViewPatterns #-}

module Snip.ActivePattern where
  
import Control.Arrow

      
data F = Fizz | Buzz | FizzBuzz | None
  deriving Show
      
fb ((`mod` 3) &&& (`mod` 5) -> (0,0)) = FizzBuzz 
fb ((`mod` 3) -> 0) = Fizz
fb ((`mod` 5) -> 0) = Buzz
fb _ = None



