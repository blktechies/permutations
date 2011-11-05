-module(erl_perms).
-export([start/1]).


start([Args]) ->
    Chars = atom_to_list(Args),
    Permutations = permutations(Chars),
    io:format("~p~n", [Permutations]),
    init:stop().


permutations([]) ->
    [[]];
permutations(List)  ->
    [[Head|Tail] || Head <- List, Tail <- permutations(List -- [Head])].
