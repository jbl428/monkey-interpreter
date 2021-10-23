import Data.Foldable (for_)
import Lexer.Token (Token (..), getToken)
import Test.Hspec (describe, hspec, it, shouldBe)

main :: IO ()
main =
  hspec $ do
    describe "token" $
      it "should exist" $
        EOF `shouldBe` EOF

    describe "getToken" $ do
      it "assign" $ getToken "=" `shouldBe` Assign
      it "plus" $ getToken "+" `shouldBe` Plus
      it "left parentheses" $ getToken "(" `shouldBe` LParen
      it "right parentheses" $ getToken ")" `shouldBe` RParen
      it "left brace" $ getToken "{" `shouldBe` LBrace
      it "right brace" $ getToken "}" `shouldBe` RBrace
      it "comma" $ getToken "," `shouldBe` Comma
      it "semicolon" $ getToken ";" `shouldBe` Semicolon
