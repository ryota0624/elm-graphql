-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Interface.GitObject exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.GitObject
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.GitObject) -> SelectionSet (a -> constructor) Github.Interface.GitObject
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onBlob : SelectionSet selection Github.Object.Blob -> FragmentSelectionSet selection Github.Interface.GitObject
onBlob (SelectionSet fields decoder) =
    FragmentSelectionSet "Blob" fields decoder


onCommit : SelectionSet selection Github.Object.Commit -> FragmentSelectionSet selection Github.Interface.GitObject
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onTag : SelectionSet selection Github.Object.Tag -> FragmentSelectionSet selection Github.Interface.GitObject
onTag (SelectionSet fields decoder) =
    FragmentSelectionSet "Tag" fields decoder


onTree : SelectionSet selection Github.Object.Tree -> FragmentSelectionSet selection Github.Interface.GitObject
onTree (SelectionSet fields decoder) =
    FragmentSelectionSet "Tree" fields decoder


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : FieldDecoder String Github.Interface.GitObject
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : FieldDecoder Github.Scalar.Uri Github.Interface.GitObject
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : FieldDecoder Github.Scalar.Uri Github.Interface.GitObject
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


id : FieldDecoder Github.Scalar.Id Github.Interface.GitObject
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The Git object ID
-}
oid : FieldDecoder Github.Scalar.GitObjectID Github.Interface.GitObject
oid =
    Object.fieldDecoder "oid" [] (Decode.string |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Interface.GitObject
repository object =
    Object.selectionFieldDecoder "repository" [] object identity
