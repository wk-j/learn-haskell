#!/usr/bin/env stack
--stack --resolver lts-8.17 script

module App1 where

import Control.Applicative ((<*>))
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
    let maybeAge =
            fmap yearDiff (readMaybe futureYearString)
                <*> readMaybe birthYearString
    displayAge maybeAge
