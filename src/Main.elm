module Main exposing (..)
import Html exposing (..) --(h1, div, p, text)


--view
main : Html msg
main =
  div [] [
    p [] [(text (concat "Hello," "World!!"))]
  ]



-- model
word : String
word = "Hello!"

concat : String -> String -> String
concat word1 word2 = word1 ++ word2



--update

