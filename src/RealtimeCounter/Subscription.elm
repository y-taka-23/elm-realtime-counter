module RealtimeCounter.Subscription exposing (subscriptions)

import Json.Decode as Json
import RealtimeCounter.Model exposing (Model, Msg(..))
import RealtimeCounter.Port exposing (load)


subscriptions : Model -> Sub Msg
subscriptions _ =
    load count


count : Json.Value -> Msg
count =
    Json.decodeValue Json.int
        >> Result.withDefault 0
        >> Load
