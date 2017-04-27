module BasicOfHaskell.C1 where
  

a b c d =
  "Function a called with argument " ++ b ++ " " ++ c ++ " " ++ d
  
b = "b"
c = "c"
d = "d"

sq b = b * b

value = sq $ sqrt $ 2 + 2

-- Ex 1
pyth a b = a * a + b * b
ex1 = pyth (3 * 2) (pyth (-1) 8)