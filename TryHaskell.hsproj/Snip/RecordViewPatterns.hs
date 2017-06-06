
{-# LANGUAGE ViewPatterns #-}

module Snip.RecordViewPatterns where
  
data Record = R { a :: Int , b :: Int }

m :: Record -> String
m (a -> 200) = "200"
m _ = "0"

