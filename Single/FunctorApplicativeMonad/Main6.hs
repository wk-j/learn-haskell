#!/usr/bin/env stack
-- stack --resolver lts-8.17 script

module Main6 where

import Safe (readMay)

yearToAge year = 2020 - year

displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "You provided an invalid year"
        Just age -> putStrLn $ "In 2020, you will be: " ++ show age

main = do
    putStrLn "Please enter you birth year"
    yearString <- getLine

    let maybeAge = do
        yearInteger <- readMay yearString
        return $ yearToAge yearInteger

    displayAge maybeAge
