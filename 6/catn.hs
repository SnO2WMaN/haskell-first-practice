main = do
  cs <- getContents
  putStr $ numbering cs

numbering cs = unlines $ map format $ zipLineNumber $ lines cs

zipLineNumber = zip [1 ..]

format (n, line) = rjust 6 (show n) ++ (" " ++ line)

rjust width s = replicate (width - length s) ' ' ++ s
