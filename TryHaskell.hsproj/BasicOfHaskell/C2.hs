module BasicOfHaskell.C2 where
  
sq x = x * x
v1 = sq 12
  

pyth a b = a * a + b * b
v2 = pyth (1 + 2) (4 / 2)

pyth2 (a,b) = a * a + b * b
v3 = pyth2 (3 * 2, pyth2 (-1, 8))


pyth3 (a, b) = a * a + b * b
lenSeq ((x,y), (x', y')) = sqrt $ pyth3 (x' - x, y' - y)
v4 = lenSeq ((1,0.5), (-1, -0.5))

getThePoint (a, (x,y), str) = (x,y)
v5 = getThePoint (3.14, (1, 0.5), "Hello!") == (1, 0.5)

getThePoint2 (_, pt, _) = pt
v6 = getThePoint2(2 * 3.14 * 10, (1, 0.5), "Hello") == (1, 0.5)


