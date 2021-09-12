module Lib
  ( someFunc,
    Token (..),
    getToken,
  )
where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Token
  = Illegal
  | EOF
  | Ident
  | Int
  | Assign
  | Plus
  | Comma
  | Semicolon
  | LParen
  | RParen
  | LBrace
  | RBrace
  | Function
  | Let
  deriving (Show, Eq)

getToken :: String -> Token
getToken "" = EOF
getToken "=" = Assign
getToken "+" = Plus
getToken "(" = LParen
getToken ")" = RParen
getToken "{" = LBrace
getToken "}" = RBrace
getToken "," = Comma
getToken ";" = Semicolon
getToken _ = Illegal