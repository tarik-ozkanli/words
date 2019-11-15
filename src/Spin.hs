module Spin 
     ( 
         Spin(Up, Down)
       , TicTacToe
       , emptyBoard
       , boolToSpin1
     ) where

import Lib

data Spin = Up | Down
   deriving (Eq, Show)

boolToSpin1 :: Bool -> Spin
boolToSpin1 False = Up
boolToSpin1 True = Down

spinToBool1 :: Spin -> Bool
spinToBool1 Up = False
spinToBool1 Down = True

boolToSpin2 :: Bool -> Spin
boolToSpin2 False = Down
boolToSpin2 True = Up

spinToBool2 :: Spin -> Bool
spinToBool2 Up = True
spinToBool2 Down = False


data Deal a b = This a
                | That b
                | TheOther Bool

data Three = One| Two | Three
  deriving (Eq, Ord, Enum, Bounded)

data TicTacToe a = TicTacToe
 { 
   board :: Three -> Three -> a
 }

emptyBoard :: TicTacToe (Maybe Bool)
emptyBoard = 
  TicTacToe $ const $ const Nothing
