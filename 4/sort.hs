import Data.List (sort)
import System.Environment (getArgs)

main = do
  cs <- getContents
  putStrLn $ unlines $ sort $ lines cs
