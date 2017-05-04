
module Concepts.Pipe where
  
(|>) x y = y x

rs = [1..20] |> filter even |> filter (> 5) |> sum

main =
    print rs


