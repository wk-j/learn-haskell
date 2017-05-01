-- http://slpopejoy.github.io/posts/Effectful01.html

module Concepts.EffectfulIO where
  
import Data.Set (Set, singleton)
import Control.Applicative ((<$>))

v1 :: IO()
v1 = putStrLn "Hello, world!"

sendSecret :: IO ()
sendSecret = writeFile "./secret" "Who is Benjamin Disraeli?"

andTheAnswerIs :: IO String
andTheAnswerIs = readFile "./secret"

countChar :: Char -> String -> Int
countChar c = length . filter (==c)

countCharInFile :: Char -> FilePath -> IO Int
countCharInFile c f = do
  contents <- readFile f
  return (countChar c contents)