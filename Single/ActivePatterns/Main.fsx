
let (|DivisibleBy|_|) divisor i = 
    if i % divisor = 0 then Some() else None

let fb input = 
    match input with
    | DivisibleBy 3 & DivisibleBy 5 -> "FizzBuzz"
    | DivisibleBy 3 -> "Fizz"
    | DivisibleBy 5 -> "Buzz"
    | _ -> string input

[1;3;5;15;100] |> List.map fb |> printfn "%A"