module RealtimeCounter.Update exposing (update)

import Json.Encode as Json
import RealtimeCounter.Model exposing (Model, Msg(..), maxCount, minCount)
import RealtimeCounter.Port exposing (store)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Decrease ->
            if model.count <= minCount then
                ( model, Cmd.none )

            else
                let
                    newCount =
                        model.count - 1
                in
                ( { model | count = newCount }, storeCount newCount )

        Increase ->
            if maxCount <= model.count then
                ( model, Cmd.none )

            else
                let
                    newCount =
                        model.count + 1
                in
                ( { model | count = newCount }, storeCount newCount )

        Load n ->
            ( { model | count = n }, Cmd.none )


storeCount : Int -> Cmd msg
storeCount =
    store << Json.int
