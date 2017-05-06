-- (script)

module H1 where

import Text.Printf

maxx :: Int -> Int -> Int
maxx x y = max x y

where'  = 
    x + y
    where 
        x = 100
        y = 200

let' =
    let x = 100
        y = 200
    in x + y

main = do
    let x = maxx 100 200
    let s = printf "%d" x
    putStrLn s
