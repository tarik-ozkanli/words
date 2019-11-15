import Test.Hspec
import Data.Maybe
import Lib


main :: IO ()
main = hspec $ do
  describe "Library routines" $ do
    describe "fact" $ do
      it "should be able to calculate fact 0 = 1" $ do
        fact 0 `shouldBe` 1
      it "should be able to calculate fact n = n * fact (n-1)" $ do
        fact 5 `shouldBe` 5 * fact (5 - 1)

    describe "fact2" $ do
      it "should be able to calculate fact2 n = n * fact2 (n - 1)" $ do
        fact2 6 `shouldBe` 6 * fact2 (6 - 1)
      it "should be able to calculate fact2 0 = 1" $ do
        fact2 0 `shouldBe` 1
      it "should be able to calculate factorial of negative numbers as 0" $ do
        fact2 (-2) `shouldBe` 0

    describe "fact3" $ do
      it "should be able to calculate fact3 0 = 1" $ do
        fact3 0 `shouldBe` Just 1
      it "should be able to calculate fact3 n = n * fact3 (n - 1)" $ do
        fact3 6 `shouldBe` Just (6 * (fromJust $ fact3 (6 - 1)))
      it "should be able to return Nothing for negative integers" $ do
        fact3 (-4) `shouldBe` Nothing
