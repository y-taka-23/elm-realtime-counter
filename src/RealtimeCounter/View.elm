module RealtimeCounter.View exposing (view)

import Html exposing (Html, div, i, text)
import Html.Attributes exposing (class, classList)
import Html.Events exposing (onClick)
import RealtimeCounter.Model exposing (Model, Msg(..), maxCount, minCount)


view : Model -> Html Msg
view model =
    div [ class "frame" ]
        [ div [ class "display" ]
            [ div
                [ classList
                    [ ( "count", True )
                    , ( "count-overflow"
                      , model.count <= minCount || maxCount <= model.count
                      )
                    ]
                ]
                [ text <| String.fromInt model.count ]
            ]
        , div [ class "pane" ] []
        , div [ class "button-rim", class "button-rim-left", onClick Decrease ]
            [ div [ class "button-face" ] [ i [ class "fas fa-minus" ] [] ]
            ]
        , div [ class "button-rim", class "button-rim-right", onClick Increase ]
            [ div [ class "button-face" ] [ i [ class "fas fa-plus" ] [] ]
            ]
        ]
