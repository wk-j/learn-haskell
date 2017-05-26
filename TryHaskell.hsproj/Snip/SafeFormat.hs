{-# LANGUAGE QuasiQuotes #-}

module Snip.SafeFormat where
  
import Text.Shakespeare.Text (ToText, st, lt)
import Data.Text 

-- format :: a -> b -> Text
format :: String -> Int -> Text
format name age = [st| My name is #{name} .... #{age}|]