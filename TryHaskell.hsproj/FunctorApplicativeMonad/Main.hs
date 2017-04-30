-- https://www.schoolofhaskell.com/school/advanced-haskell/functors-applicative-functors-and-monads

module FunctorApplicativeMonad.Main where
  
import Safe (readMay)
  
-- No safe
v1 = do
  putStrLn "Please endter your birth year"
  let year = "1986"
  putStrLn $ "In 2020, you will be: " ++ show (2020 - read year)

-- Safe
v2 = do
  print (readMay "1980" :: Maybe Integer)
  print (readMay "Hello" :: Maybe Integer)
  print (readMay "200" :: Maybe Integer)
  print (readMay "two-thousand" :: Maybe Integer)
  
-- Match
v3 = do
  putStrLn "Please enter you birth year"
  let yearString = "..."
  case readMay yearString of
    Nothing -> putStrLn "You provided an invalid year"
    Just year -> putStrLn $ "In 2020, you will be: " ++ show (2020 - year)
    
-- Decoupling code
displayAge maybeAge =
  case maybeAge of
    Nothing -> putStrLn "You provided an invalid year"
    Just age -> putStrLn $ "In 2020, you will be: " ++ show age
    
yearToAge year = 2020 - year

v4 = 
  do
    putStrLn "Please enter your birth year"
    let yearString = "1928"
    let maybeAge = 
          case readMay yearString of
            Nothing -> Nothing
            Just year -> Just $ yearToAge year
    displayAge maybeAge
    