port module RealtimeCounter.Port exposing (load, store)

import Json.Decode as D
import Json.Encode as E


port load : (D.Value -> msg) -> Sub msg


port store : E.Value -> Cmd msg
