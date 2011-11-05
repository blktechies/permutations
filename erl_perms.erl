-module(erl_perms).
-export([start/0, start/1]).


start() ->
    start([]).

start([]) ->
    io:format("Please give me a string of characters to permutate...~n"),
    init:stop();

start([Args]) ->
    Chars = atom_to_list(Args),
    Permutations = permutations(Chars),
    io:format("~p~n", [Permutations]),
    init:stop().


permutations([]) ->
    [[]];

permutations(List)  ->
    [[Head|Tail] || Head <- List, Tail <- permutations(List -- [Head])].
