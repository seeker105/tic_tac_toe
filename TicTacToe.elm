module TicTacToe where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import List exposing (..)
import Signal exposing (Address)
import String exposing (..)

import StartApp.Simple as StartApp

--Model

type alias Model =
  {
    a0: String,
    a1: String,
    a2: String,
    b0: String,
    b1: String,
    b2: String,
    c0: String,
    c1: String,
    c2: String
  }

initialModel : Model
initialModel =
  {
    a0 = "",
    a1 = "",
    a2 = "",
    b0 = "",
    b1 = "",
    b2 = "",
    c0 = "",
    c1 = "",
    c2 = ""
  }

--VIEW

view address model =
  div [ class "container" ] [
    div [ class "row" ] [
      div [ class "col-xs-10 col-offset-xs-1" ]
      [
        button [ class "btn btn-primary" ] [ ],
        button [ class "btn btn-primary" ] [ ],
        button [ class "btn btn-primary" ] [ ]
      ]
    ],
    div [ class "row" ] [
      div [ class "col-xs-10 col-offset-xs-1" ]
      [
        button [ class "btn btn-primary" ] [ ],
        button [ class "btn btn-primary" ] [ ],
        button [ class "btn btn-primary" ] [ ]
      ]
    ],
    div [ class "row" ] [
      div [ class "col-xs-10 col-offset-xs-1" ]
      [
        button [ class "btn btn-primary" ] [ ],
        button [ class "btn btn-primary" ] [ ],
        button [ class "btn btn-primary" ] [ ]
      ]
    ]
  ]

--UPDATE

type Action
  = NoOp

update action model =
  case action of
    NoOp ->
      model


--CONTROLLER

main =
  StartApp.start
    {
      model = initialModel,
      view = view,
      update = update
    }

    
