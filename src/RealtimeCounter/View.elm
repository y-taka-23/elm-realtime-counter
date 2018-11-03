module RealtimeCounter.View exposing (view)

import Html exposing (Html, div, i, text)
import Html.Attributes exposing (class)
import RealtimeCounter.Model exposing (Model, Msg)


view : Model -> Html Msg
view _ =
    div [ class "frame" ]
        [ div [ class "display" ]
            [ div [ class "count" ] [ text "42" ]
            ]
        , div [ class "pane" ] []
        , div [ class "button-rim", class "button-rim-left" ]
            [ div [ class "button-face" ] [ i [ class "fas fa-minus" ] [] ]
            ]
        , div [ class "button-rim", class "button-rim-right" ]
            [ div [ class "button-face" ] [ i [ class "fas fa-plus" ] [] ]
            ]
        ]
