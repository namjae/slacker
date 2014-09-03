-module(request).
-include("defines.hrl").

-define(API_URL, "https://slack.com/api/").

%% @doc Sends a request to Slack API
send(Endpoint, Params) ->
    URL = restc:construct_url(?API_URL, Endpoint, Params),
    restc:request(get, URL).
