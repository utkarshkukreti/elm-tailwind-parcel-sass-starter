module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "my-4 flex justify-center items-center" ]
        [ button [ class "px-2 py-1 bg-gray-200 hover:bg-gray-300 rounded border", onClick Decrement ] [ text "-" ]
        , div [ class "px-3" ] [ text (String.fromInt model) ]
        , button [ class "px-2 py-1 bg-gray-200 hover:bg-gray-300 rounded border", onClick Increment ] [ text "+" ]
        ]
