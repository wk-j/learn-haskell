#!/usr/bin/env stack
-- stack --resolver lts-8.17 script

module Main3 where

import Safe (readMay)

main = do

    putStrLn "Please enter your birth year"
    yearString <- getLine

    case readMay yearString of
        Nothing -> putStrLn "You provide an invalid year"
        Just year -> putStrLn $ "In 2020, you will be: " ++ show (2020 - year)
