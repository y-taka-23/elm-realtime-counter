module Main exposing (main)

import Browser
import RealtimeCounter.Model exposing (Model, Msg, init)
import RealtimeCounter.Subscription exposing (subscriptions)
import RealtimeCounter.Update exposing (update)
import RealtimeCounter.View exposing (view)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , subscriptions = subscriptions
        , update = update
        , view = view
        }


init : () -> ( Model, Cmd Msg )
init _ =
    ( RealtimeCounter.Model.init, Cmd.none )
