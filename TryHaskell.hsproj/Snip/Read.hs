module Snip.Read where

import Text.Read

tryParse :: String -> (Bool, Int)
tryParse value =
  case reads value of
    [ (v, "") ] -> (True, v)
    _ -> (False, 0)
    
  