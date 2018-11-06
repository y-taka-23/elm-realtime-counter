port module RealtimeCounter.Port exposing (load)

import Json.Decode as Json


port load : (Json.Value -> msg) -> Sub msg
