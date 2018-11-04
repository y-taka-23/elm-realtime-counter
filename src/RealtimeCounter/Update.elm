module RealtimeCounter.Update exposing (update)

import RealtimeCounter.Model exposing (Model, Msg(..), maxCount, minCount)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Decrease ->
            if model.count <= minCount then
                ( model, Cmd.none )

            else
                ( { model | count = model.count - 1 }, Cmd.none )

        Increase ->
            if maxCount <= model.count then
                ( model, Cmd.none )

            else
                ( { model | count = model.count + 1 }, Cmd.none )
