import Lib
import Test.QuickCheck


prop_revapp :: [Int] -> [Int] -> Bool
prop_revapp xs ys = reverse (xs ++ ys) == reverse ys ++ reverse xs

prop_mult_1 :: Int -> Int -> Bool
prop_mult_1 x y =  mult x y == mult (x-1) y + y

prop_mult_2 :: Int -> Int -> Bool
prop_mult_2 x y = mult x (y-1) == mult x y - x

prop_fact_1 :: Integer -> Bool
prop_fact_1 n = n <= 0 || fact2 n == n * fact2 (n - 1)

prop_fact_2 0 = 1 == fact2 (0)


main = do
  _ <- quickCheck prop_revapp
  _ <- quickCheck prop_mult_1
  _ <- quickCheck prop_mult_2
  _ <- quickCheck prop_fact_1
  return ()
