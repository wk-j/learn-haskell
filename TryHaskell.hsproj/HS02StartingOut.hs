module HS02StartingOut where
  
x = 2 + 15

doubleMe x = x + 1

doubleUs x y = x * 2 + y * 2

doubleSmallNumber x = 
  if x > 100
    then x
  else x * 2
 
doubleSmallNumber' x = if x > 100 then x else x * 2

connaO'Brien = "It's a-me, Conan O'Brien!"

lostNumber = [1,8,15,16,23,42]