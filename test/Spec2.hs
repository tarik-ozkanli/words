import Test.Hspec
import Data.Maybe
import Spin


main :: IO ()
main = hspec $ do
  describe "Spin routines" $ do
    describe "boolToSpin1" $ do
      it "should convert False to Up" $ do
        boolToSpin1 False `shouldBe` Up
