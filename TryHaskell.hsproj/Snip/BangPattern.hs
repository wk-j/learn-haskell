--https://ocharles.org.uk/blog/posts/2014-12-05-bang-patterns.html
{-# LANGUAGE BangPatterns #-}

module Snip.BangPattern where
  

import Data.Function (fix)
import Data.List (foldl')

hello :: Bool -> String
hello load = "Hello"

hello2 :: Bool -> String
hello2 True = "Hello!"
hello2 False = "Hello"

hello3 :: Bool -> String
hello3 !load = "Hello"

-- foo :: Eq a => Show a => a -> a -> String

data R = R { (-->) :: Int -> Int }
r = R { (-->) = (+1) }