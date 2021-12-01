main = do
  cs <- getContents
  putStr $ expand cs

expand :: String -> String
expand = concatMap translate

translate :: Char -> String
translate ' ' = replicate 8 '@'
translate c = [c]
