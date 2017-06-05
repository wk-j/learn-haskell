type Con = 
    | Con of ConValue
    | Uncon of ConValue
    | Nonecon
and ConValue = { ConValue : string }

let whichCon = function
    | Con v     -> sprintf "convalue is %s" v.ConValue
    | Uncon v   -> sprintf "convalue is %s" v.ConValue
    //| Nonecon   -> "..."
    // warning FS0025: Incomplete pattern matches 
    // on this expression

whichCon (Con { ConValue = "A" })   |> printfn "%A"
whichCon Nonecon                    |> printfn "%A"