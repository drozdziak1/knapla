module Main where

import Lib
import Graphics.UI.GLUT.Initialization

main :: IO ()
main = do
  putStrLn "Before init"
  (progName, nonGlutArgs) <- getArgsAndInitialize
  putStrLn "Initialized!"
  exit
