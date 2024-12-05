module Main exposing (..)
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

-- MAIN
main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL
type alias Model =
  { content : String
  }

init : Model
init =
  { content = "From" }



-- UPDATE
type Msg
  = LinkFrom
  | LinkTo
  | Init

update : Msg -> Model -> Model
update msg model =
  case msg of
    LinkFrom ->
      { model | content = "From" }
    LinkTo ->
      { model | content = "To" }
    Init ->
      { model | content = "From" }



-- VIEW
view : Model -> Html Msg
view model =
  case model.content of 
    "From" -> fromView
    "To" -> toView
    _-> errorView

-- Viewリスト
fromView : Html Msg
fromView =  div []
            [
              h2 [] [ text "受信不能電波局-monologuestation-" ]
            , div [ style "font-size" "8px" ]
                  [ text "🐣:全年齢/🔞:性的/🐞:リグル※男です/🗑️:エタり済/⚧️:性転換/❓:意味不明/🩸:グロ", br [][] ]
            , div [] 
                  [ table [ ]
                      [ tr []
                          [ td [] [ text "項目1" ]
                          , td [] [ text "項目2" ]
                          ]
                      , tr []
                          [ td [] [ text "値1" ]
                          , td [] [ text "値2" ]
                          ]
                      ]
                  ]
            , a [ href "#", onClick LinkTo ] [ text "遷移" ]
            ]
toView : Html Msg
toView =  div [][
            h2 [] [ text "遷移後" ]
          , div [][ text "遷移後ページです。", br [][]
                  , text "トップに戻ります。" 
                  ]
          , a [ href "#", onClick LinkFrom ] [ text "戻る" ]
          ]

errorView : Html Msg
errorView = div [][
              h2 [] [ text "エラー" ]
            , div [][ text "エラーページです。", br [][]
                    , text "戻ります。"
                    ]
            , a [ href "#", onClick LinkFrom ] [ text "戻る" ]
            ]
