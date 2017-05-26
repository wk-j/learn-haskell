module Snip.Pipe where
  
(|>) x y = y x


(||>) x y z = z x y

go x y = x + y

(..)  (b -> c) -> (a -> b) -> a -> c