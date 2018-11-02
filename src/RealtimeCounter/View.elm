module RealtimeCounter.View exposing (view)

import Html exposing (Html, div, text)
import RealtimeCounter.Model exposing (Model, Msg)


view : Model -> Html Msg
view _ =
    div [] [ text "Hello, Elm!" ]
