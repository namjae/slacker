-module(misc).

-include("spec.hrl").

-export([stars_list/1, emoji_list/1]).

%% @doc Lists the items starred by a user.
-spec stars_list(Token :: string()) -> http_response().
stars_list(Token) ->
    request:slack("stars.list", [{"token", Token}]).

%% @doc Lists the custom emoji for a team.
-spec emoji_list(Token :: string()) -> http_response().
emoji_list(Token) ->
    request:slack("emoji.list", [{"token", Token}]).
