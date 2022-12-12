module Main exposing (..)
import Html exposing (..) --(h1, div, p, text)

hello =  h1 [] [text "hello"]
world =  p [] [text "world."]

main =
  div [] [ hello , world]