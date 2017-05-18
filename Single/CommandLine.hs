module CommandLine where


hello :: IO()
hello = putStrLn "Hello, world"

hi :: String -> IO()
hi name = putStrLn $ "Hi " ++ name
