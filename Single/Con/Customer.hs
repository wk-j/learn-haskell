-- (script)

{-# OverloadedRecordFields #-}

module Customer where

data Customer = Customer { firstName :: String, lastName :: String }
data Person = Person { firstName :: String, lastName :: String }
