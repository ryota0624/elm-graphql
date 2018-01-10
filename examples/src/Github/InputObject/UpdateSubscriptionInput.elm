-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.UpdateSubscriptionInput exposing (..)

import Github.Enum.SubscriptionState
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


{-| Encode a UpdateSubscriptionInput into a value that can be used as an argument.
-}
encode : UpdateSubscriptionInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "subscribableId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.subscribableId |> Just ), ( "state", Encode.enum Github.Enum.SubscriptionState.toString input.state |> Just ) ]


{-| Type for the UpdateSubscriptionInput input object.
-}
type alias UpdateSubscriptionInput =
    { clientMutationId : OptionalArgument String, subscribableId : Github.Scalar.Id, state : Github.Enum.SubscriptionState.SubscriptionState }
