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
    
-- Functor
v5 = do
  putStrLn "Please enter your birth year"
  let yearString = "1920"
  let maybeAge = fmap yearToAge $ readMay yearString
  displayAge maybeAge
    

v6 = do
  putStrLn "Please enter your birth year"
  let yearString = "1928"
  let maybeAge = do
      yearInteger <- readMay yearString
      return $ yearToAge yearInteger
  displayAge maybeAge
  
-- Dealing with two variable
v7 = do
  putStrLn "Plese enter your birth year"
  let birthYearString = "1986"
  putStrLn "Please enter some year in the future"
  let futureYearString = "2030"
  let maybeAge = 
        case readMay birthYearString of
          Nothing -> Nothing
          Just birthYear ->
                case readMay futureYearString of
                  Nothing -> Nothing
                  Just futureYear -> Just $ futureYear - birthYear
  displayAge maybeAge

yearDiff f b = f - b  

v8 = do
  putStrLn "Please enter your birth year"
  let birthYearString = "1986"
  putStrLn "Please enter some year in the future"
  let futureYearString = "2030"
  let maybeAge = do
      birthYear <- readMay birthYearString
      futureYear <- readMay futureYearString
      return $ yearDiff futureYear birthYear
      
  displayAge maybeAge
                      
-- Partial application
v9 = do
  putStrLn "Please enter you birth year"
  let birthYearString = "1986"
  putStrLn "Please enter some year in the future"
  let futureYearString = "2030"
  let maybeAge = do
      yearToAge <- fmap yearDiff $ readMay futureYearString
      birthYear <- readMay birthYearString
      return $ yearToAge birthYear
  displayAge maybeAge
      
-- Use fmap twice
v10 = do
  putStrLn "Please enter you birth year"
  let birthYearString = "1986"
  putStrLn "Please enter some year in the future"
  let futureYearString = "2030"
  let maybeAge = do
      yearToAge <- fmap yearDiff $ readMay futureYearString
      fmap yearToAge $ readMay birthYearString
  displayAge maybeAge