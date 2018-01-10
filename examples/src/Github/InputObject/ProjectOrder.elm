-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.ProjectOrder exposing (..)

import Github.Enum.OrderDirection
import Github.Enum.ProjectOrderField
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a ProjectOrder into a value that can be used as an argument.
-}
encode : ProjectOrder -> Value
encode input =
    Encode.maybeObject
        [ ( "field", Encode.enum Github.Enum.ProjectOrderField.toString input.field |> Just ), ( "direction", Encode.enum Github.Enum.OrderDirection.toString input.direction |> Just ) ]


{-| Type for the ProjectOrder input object.
-}
type alias ProjectOrder =
    { field : Github.Enum.ProjectOrderField.ProjectOrderField, direction : Github.Enum.OrderDirection.OrderDirection }
