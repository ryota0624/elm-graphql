-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.CommitAuthor exposing (..)

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


{-| Encode a CommitAuthor into a value that can be used as an argument.
-}
encode : CommitAuthor -> Value
encode input =
    Encode.maybeObject
        [ ( "id", (\(Github.Scalar.Id raw) -> Encode.string raw) |> Encode.optional input.id ), ( "emails", (Encode.string |> Encode.list) |> Encode.optional input.emails ) ]


{-| Type for the CommitAuthor input object.
-}
type alias CommitAuthor =
    { id : OptionalArgument Github.Scalar.Id, emails : OptionalArgument (List String) }
