-- (script)

{-# LANGUAGE GADTs #-}

module GADTs where

{-
data STy ty 
    = (ty ~ Int) => SInt
    | (ty ~ Bool) => SBool
    | forall ty' . (ty ~ Maybe ty') => SMaybe (STy ty')
-}

data STy ty where
    SInt :: STy Int
    SBool :: STy Bool
    SMaybe :: STy ty' -> STy (Maybe ty')

zero :: STy ty -> ty
zero SInt  = 0
zero SBool = False
zero (SMaybe _) = Nothing

main :: IO()
main = do
    putStrLn "Hello"