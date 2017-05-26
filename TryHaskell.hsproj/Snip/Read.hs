module Snip.Read where

import Text.Read

tryParse :: String -> (Bool, Int)
tryParse value =
  case reads value of
    [ (v, "") ] -> (True, v)
    _ -> (False, 0)
    
intValue1 :: Maybe Int
intValue1 = readMaybe "100." 


intValue2 = readMaybe "100" 
