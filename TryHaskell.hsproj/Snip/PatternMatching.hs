module Snip.PatternMatching where
  
atLeastTwo list = 
  case list of 
    (a:b:rest) -> True
    _ -> False
    
    
not' True = False
not' False = True

a :: (->) String String 
a b = "Hello " ++ b


  