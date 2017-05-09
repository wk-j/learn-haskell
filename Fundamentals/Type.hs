-- (script)

module Type where 
import Text.Printf
    
-- type String = [Char]
type Point = (Double, Double)
newtype CustomerId = MakeCustomerId Int
    deriving (Show)

data Customer = MakeCustomer
    { customerId :: CustomerId
    , name :: String 
    } 

showCus :: Customer -> IO()
showCus c = do
    print $ name c
    print $ customerId c

showPoint (x1,x2) =
    print x1

showNewType (MakeCustomerId id) =
    print id


data MaybeInt = NoInt | JustInt Int
defaultInt :: Int -> MaybeInt -> Int
defaultInt defaultValue NoInt = defaultValue
defaultInt _ (JustInt x) = x

main = do
    putStrLn "Hello, wolrd!"
    showPoint (10, 20)
    showNewType $ MakeCustomerId 100
    let cus = MakeCustomer { customerId = MakeCustomerId 100, name = "hello" }
    showCus cus

    let newCus = cus { name = "world"}
    showCus newCus

    let x = NoInt
    print $ defaultInt 0 x
    print $ defaultInt 0 (JustInt 10)






    
