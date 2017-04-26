module GreatGood.HS03TypeAndTypeClasses where
  
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']]


addThree x y z = z + y + z

factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

-- TYPE CLASS

