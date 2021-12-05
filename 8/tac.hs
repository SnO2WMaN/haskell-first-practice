main = do
  cs <- getContents
  putStr $ tac cs

tac = unlines . reverse . lines
