module RealtimeCounter.Model exposing
    ( Model
    , Msg(..)
    , init
    , maxCount
    , minCount
    )


type Msg
    = Decrease
    | Increase


type alias Model =
    { count : Int }


init : Model
init =
    { count = 42 }


minCount : Int
minCount =
    -999


maxCount : Int
maxCount =
    999
