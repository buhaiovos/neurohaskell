module Main where

import           Lib
import           System.Environment

main :: IO ()
main = do
  (path:_) <- getArgs
  loadImage path
