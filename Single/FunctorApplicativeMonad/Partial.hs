#!/usr/bin/env stack
-- stack --resolver lts-8.17 script

module Partial where

import Text.Read

displayAge :: Maybe Int -> IO()
displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "You provided invalid input"
        Just age -> putStrLn $ "In that year, you will be: " ++ show age

yearDiff :: Int -> Int -> Int
yearDiff futureYear birthYear = futureYear - birthYear

main :: IO()
main = do
    putStrLn "Please enter your birth year"
    birthYearString <- getLine
    putStrLn "Please enter some year in the future"
    futureYearString <- getLine
    let maybeAge = do
            yearToAge <- fmap yearDiff (readMaybe futureYearString)
            fmap yearToAge (readMaybe birthYearString)
    displayAge maybeAge
