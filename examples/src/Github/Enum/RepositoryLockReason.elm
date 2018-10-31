-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.RepositoryLockReason exposing (RepositoryLockReason(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible reasons a given repository could be in a locked state.

  - Moving - The repository is locked due to a move.
  - Billing - The repository is locked due to a billing related reason.
  - Rename - The repository is locked due to a rename.
  - Migrating - The repository is locked due to a migration.

-}
type RepositoryLockReason
    = Moving
    | Billing
    | Rename
    | Migrating


list : List RepositoryLockReason
list =
    [ Moving, Billing, Rename, Migrating ]


decoder : Decoder RepositoryLockReason
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "MOVING" ->
                        Decode.succeed Moving

                    "BILLING" ->
                        Decode.succeed Billing

                    "RENAME" ->
                        Decode.succeed Rename

                    "MIGRATING" ->
                        Decode.succeed Migrating

                    _ ->
                        Decode.fail ("Invalid RepositoryLockReason type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RepositoryLockReason -> String
toString enum =
    case enum of
        Moving ->
            "MOVING"

        Billing ->
            "BILLING"

        Rename ->
            "RENAME"

        Migrating ->
            "MIGRATING"
