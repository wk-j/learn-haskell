module Snip.Fix where

-- import Data.Function
 
-- fix :: (a -> a) -> a
-- fix f =  f $ fix f
  
-- fact = \f n -> if n == 0 then 1 else (n * f(n-1))

fix f = f (fix f)
fact = \f n -> if n == 0 then 1 else n * f (n - 1)
