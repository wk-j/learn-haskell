

open System

let (|Even|Odd|) input = 
    if input % 2 = 0 then Even else Odd

let (|IntLiteral|_|) str = 
    match Int32.TryParse str with
    | (true, value) -> Some value
    | _ -> None


match "ll100" with
| IntLiteral x ->
    printfn "%A" x
| _ ->
    printfn "Error"

match 100 with
| Even -> printfn "Even"
| Odd -> printfn "Odd"

