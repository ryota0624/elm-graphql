-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.MovedColumnsInProjectEvent exposing (..)

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


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.MovedColumnsInProjectEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.MovedColumnsInProjectEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder Github.Scalar.DateTime Github.Object.MovedColumnsInProjectEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


id : FieldDecoder Github.Scalar.Id Github.Object.MovedColumnsInProjectEvent
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)
