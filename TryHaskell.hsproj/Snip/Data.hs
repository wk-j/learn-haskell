module Snip.Data where
  
data Person = Person { name:: String, age:: Int } 
  deriving Show
  
isTeen :: Person -> Bool
isTeen (Person _ age) = age > 10 && age < 20

type PersonPredicate = Person -> Bool
isNameWk :: PersonPredicate
isNameWk person = name person == "wk"