module Snip.BasicHaskell where
  
import Data.Char
  
data Color = C { red, green, blue :: Int }

isGeenZero (C { green = 0}) = True
isGeenZero _ = False 

data Pixel = P Color 
  
setGreen (P col@(C { green = 0 })) = P col
setGreen _ = P (C 0 0 0)
  
isEven 0 = True
isEven 1 = False


class Def a where
  defValue :: a -> a
  
instance Def Int where
  defValue _ = 0
  
instance Def Char where
  defValue _ = ' '
  
instance Def [a] where
  defValue _ = []
  

instance Def a => Def (Maybe a) where
  defValue (Just x) = Just (defValue x)
  defValue Nothing = Nothing
  
--instance Def a => Def (Maybe) where
--  defValue ~(Just x) Just (defValue x)



squares = [x * x | x <- [1..10] ]
divisors n =
  [d | d <- [1 .. (n `div` 2) ]
    , n `mod` d == 0]
    

first ## last =
  last ++ ", " ++ last
  
add10 = (+) 10

noGreen1 (C r _ b) = C r 0 b

multBy n = \m -> n * m

negateAll :: Num a => [a] -> [a]
negateAll a = map (\x -> -x) a


data Choices = 
  First String
  | Second
  | Third 
  | Forth
  
whichChoice ch = 
  case ch of
    First _ -> "1st"
    Second -> "2st"
    _ -> "Something else."
    

strcmp s1 s2 = case (s1, s2) of
  ([], []) -> True
  (s1:ss1, s2:ss2)
    | toUpper s1 == toUpper s2 ->
      strcmp ss1 ss2
    | otherwise -> False
  _ -> False
  
class Flovor a where
  flovor :: a -> String
  
instance Flovor Bool where
  flovor _ = "sweet"
  
instance Flovor Char where
  flovor _ = "sour"
  
  
data Point = 
  TwoD Int Int
  | ThreeD Int Int Int
  
data Poly = Triangle Point Point Point

data User = User String | Admin String
whatUser (User _) = "mormal user."
whatUser (Admin _) = "admin user."

data Slot1 a = Slot1 a | Empty1
data Slot2 a = Slot2 a Int | Empty2


data Contact =  
  Contact { ctName :: String
  , ctEmail :: String
  , ctPhone :: String }
  
data Con =
  Con { conValue :: String }
  | Uncon { conValue :: String }
  | Noncon
  
whichCon con = "convalue is " ++
  conValue con
  

data Prioriry = Low | Loud | High
  deriving (Read)
  
data Alarm = Soft | Load | Deafening
  deriving (Read, Show)

-- data (Num a) => SomeNumber a = Two a a
--  | Three a a a


process :: (Num a) => a -> a
process a = a






