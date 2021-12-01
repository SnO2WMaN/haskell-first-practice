import Data.List (group, sort)
import System.Environment (getArgs)

main = do
  cs <- getContents
  putStrLn $ unlines $ map head $ group $ lines cs
