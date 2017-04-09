module HS04SyntaxInFunctions where
  

lucky 7 = "Lucky Number Seven"
lucky x = "Sorry, you're out of liuck, pal!"

sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"

factorial 0 = 1
factorial n = n * factorial (n - 1)

charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVector a b = (fst a + fst b, snd a + snd b)
addVector (x1, y1) (x2,y2) = (x1 + x2, y1 + y2)

first (x, _, _) = x
second (_, y, _) = y
third (_, _, z) = z