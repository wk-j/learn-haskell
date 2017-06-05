{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

module Snip.PatternSynonyms where
  
import Text.Read

---
data I = A | B
data O = X | Y

branch :: I -> O
branch A = X
branch B = Y

test (branch -> X) = "X"
test _             = "_"

---
  
data Data = 
  QNumber Int
  | QString String
  deriving Show
  
extract (readMaybe -> Just x) = QNumber x
extract (readMaybe -> Just x) = QString x


square x = x * x
addSquare :: Integer -> Integer -> Integer
addSquare (square -> squared) other = squared + other











