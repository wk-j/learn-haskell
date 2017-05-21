{-# LANGUAGE QuasiQuotes #-}

module Snip.SafeFormat where
  
import Text.Shakespeare.Text
import Data.Text

format name age = [st| My name is {name} .... {age}|]
