main = do
  cs <- getContents
  putStr $ lastNLines 10 cs

takeLast n ss = reverse $ take n $ reverse ss

lastNLines n cs = unlines $ takeLast n $ lines cs
