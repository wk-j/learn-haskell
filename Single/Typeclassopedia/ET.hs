-- (script)
module ET where

data MEither a b =
    MLeft a
    | MRight b

instance Functor (MEither a) where
    fmap f (MRight x) = MRight (f x)
    fmap _ (MLeft x) = MLeft x

instance (Num a, Show a, Show b) => Show (MEither a b) where
    show (MRight x) =  "MRight " ++  show x
    show (MLeft x) = "MLeft " ++ show x

main :: IO()
main =  do
    let a = fmap (+ 1) (MLeft  100)
    let b = fmap (+ 1) (MRight 100)
    putStrLn $ show a
    putStrLn $ show b
    putStrLn "Hello"
