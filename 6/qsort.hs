main = do
  cs <- getContents
  putStrLn $ unlines $ qsort $ lines cs

qsort [] = []
qsort (p : xs) = qsort lt ++ [p] ++ qsort gteq
  where
    lt = [x | x <- xs, x < p]
    gteq = [x | x <- xs, x >= p]
