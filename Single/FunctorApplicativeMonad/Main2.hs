#!/usr/bin/env stack
-- stack --resolver lts-8.17 script Main2.hs

module Main1 where

import Safe (readMay)

main = do
    print (readMay "1980" :: Maybe Integer)
    print (readMay "Hello" :: Maybe Integer)
    print (readMay "2000" :: Maybe Integer)
    print (readMay "two-thousand" :: Maybe Integer)
