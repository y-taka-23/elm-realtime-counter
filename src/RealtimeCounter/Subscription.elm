module RealtimeCounter.Subscription exposing (subscriptions)

import RealtimeCounter.Model exposing (Model, Msg)


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
