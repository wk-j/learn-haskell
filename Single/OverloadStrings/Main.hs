-- (script)

{-# LANGAGE OverloadedStrings, FlexibleInstances #-}
import Data.String
import Unsafe.Coerce

instance IsString a => String a where
    fromString s = \x -> x ++  (unsafeCoerce x)

main = do 
    
    let fot = "foo" "bar" :: String
    putStrLn "Hello"
