#!/usr/bin/env stack
-- stack --resolver lts-8.17 script

module Main4 where

import Safe (readMay)

displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "year provined an invalid year"
        Just age -> putStrLn $ "In 2020, you will be: " ++ show age

yearToAge year = 2020 - year

main = do
    putStrLn "Please enter your birth year"
    yearString <- getLine

    let maybeAge = fmap yearToAge (readMay yearString)
    displayAge maybeAge
