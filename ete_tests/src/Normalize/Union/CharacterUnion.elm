-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Normalize.Union.CharacterUnion exposing (..)

import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode
import Normalize.Interface
import Normalize.Object
import Normalize.Union


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Normalize.Union.CharacterUnion) -> SelectionSet constructor Normalize.Union.CharacterUnion
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onHuman_ : SelectionSet selection Normalize.Object.Human_ -> FragmentSelectionSet selection Normalize.Union.CharacterUnion
onHuman_ (SelectionSet fields decoder) =
    FragmentSelectionSet "_human" fields decoder


onDroid : SelectionSet selection Normalize.Object.Droid -> FragmentSelectionSet selection Normalize.Union.CharacterUnion
onDroid (SelectionSet fields decoder) =
    FragmentSelectionSet "Droid" fields decoder
