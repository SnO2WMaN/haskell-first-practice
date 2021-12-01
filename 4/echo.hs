import System.Environment (getArgs)

main = do
  args <- getArgs
  putStrLn $ unwords args
