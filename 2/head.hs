main = do
  cs <- getContents
  putStr $ firstNLines 10 cs

firstNLines :: Int -> String -> String
firstNLines n cs = unlines (take n (lines cs))
