module Lib
    ( loadImage
    ) where

import qualified Codec.Picture as P

loadImage :: String -> IO ()
loadImage path = do
  image <- P.readPng path
  case image of
    (Right _) -> putStrLn "You've read an image!"
    otherwise -> putStrLn "You've failed to read an image!"
