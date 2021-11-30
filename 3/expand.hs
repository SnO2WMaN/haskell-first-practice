main = do
  cs <- getContents
  putStr $ expand cs

expand :: String -> String
expand = concatMap translate

translate :: Char -> String
translate c = if c == ' ' then "" else [c]
