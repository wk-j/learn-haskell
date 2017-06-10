module Snip.Applicative where

import Text.Read (readMaybe)
import Control.Applicative ((<*>))
  
birthYear = "1986"
futureYear = "2020"

future birthYear futureYear = do 
  let maybeFuture = readMaybe futureYear
  let maybeBirthYear = readMaybe birthYear
  
  yearToAge <- fmap yearDiff maybeFuture
  fmap yearToAge maybeBirthYear
  

yearDiff :: Int -> Int -> Int
yearDiff future birth = future - birth

