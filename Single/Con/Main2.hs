-- (script)

{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}
{-# OPTIONS_GHC -Werror #-}

module Main where

data Con =
  Con { conValue :: String }
  | Uncon { conValue :: String }
  | Noncon
  
whichCon :: Con -> String
whichCon con = case con of
  Con c -> "convalue is " ++ c
  Uncon c -> "convalue is " ++ c
  -- Noncon -> "..."

main :: IO()
main = do
    putStrLn $ whichCon (Con "A")
    putStrLn $ whichCon (Noncon)



    