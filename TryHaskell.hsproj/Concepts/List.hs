module Concepts.List where
    
import Data.List
  

go = do
  contents <- readFile "Main.hs"
  return $ lines contents