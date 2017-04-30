-- http://www.parsonsmatt.org/2017/04/26/basic_type_level_programming_in_haskell.html

module BasicTypeLevel.Main where
  
-- Basic Type
data Unit = MkUnit
data Bool = True | False
data IntAndChar = MkIntAndChar Int Char
data Mk = MkMk

theFirstOne = MkIntAndChar 3 'a'
theSecond = MkIntAndChar (-3) 'b'

-- Higher Type
-- data Maybe a = Just a | Nothing

nothingA = Nothing :: Maybe a
nothingInt = Nothing :: Maybe Int
nothingChar = Nothing :: Maybe Char

data HigherKinded f a = Bar a | Wrapped (f a)

-- Dynamically Kined Programming
data Void
data Zero
data Succ a
type One = Succ Zero
type Two = Succ One
type Three = Succ Two
type Four = Succ (Succ (Succ (Succ Zero)))

-- Data Kinds
{-# LANGUAGE DataKinds #-}
data Nat = Zero | Succ Nat

