-- (script)
-- https://joyofhaskell.com/posts/2017-03-15-typeclasses-in-translation.html

module TypeclassesInTranslation where

class Eqq a where 
    (===), (/==) :: a -> a -> Bool
    x /== y = not (x === y)

boolToString :: Bool -> String
boolToString True = "True"
boolToString False = "False"

instance Eqq Bool where
    True === True = True
    False === False = True
    _   === _   = False

main :: IO()
main = do
    let x = True === True
    let y = True /== True
    putStrLn $ boolToString x
    putStrLn $ boolToString y