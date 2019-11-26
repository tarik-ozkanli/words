module Lib
    ( 
        fact
      , fact2
      , fact3
      , mult
    ) where

import Data.Maybe

-- Compiles and gives runtime error if n < 0 but can not be tested with Hspec
fact :: Integer -> Integer
fact 0 = 1
fact n | n < 0 = error "The number should be at least zero!"
       | otherwise = n * fact (n - 1)

fact2 :: Integer -> Integer
fact2 n | n < 0     = 0
        | n == 0    = 1
        | otherwise = n * fact2 (n - 1)

-- Perfectly testable with HSpec
fact3 :: Integer -> Maybe Integer
fact3 n | n < 0     = Nothing
        | n == 0    = Just 1
        | otherwise = Just $ n * (fromJust $ fact3 (n - 1))


mult :: Int -> Int -> Int
mult x y = x * y
