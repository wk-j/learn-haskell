-- (script)

module Main where

data Con =
  Con { conValue :: String }
  | Uncon { conValue :: String }
  | Noncon
  
whichCon :: Con -> String
whichCon con = "convalue is " ++
  conValue con

main :: IO()
main = do
    putStrLn $ whichCon (Con "A")
    putStrLn $ whichCon (Noncon)
    