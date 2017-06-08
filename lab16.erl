-module(lab16).
-export[main/1].

% main::L -> Result
main(L) ->
  Lenght = length(L),
  U = Lenght div 2,
  reverse(slice(L, 0, U, Lenght), []) ++ slice(L, 0, 0, U).

% slice::List, Iterator, From, To -> Slice
slice([_ | T], I, Start, End) when I < Start ->
    slice(T, I + 1, Start, End);
slice([H | T], I, Start, End) when I < End ->
    [H | slice(T, I + 1, Start, End)];
slice(_, End, _, End) ->
    [].

% reverse::List, Accumulator -> ReversedList
reverse([H|T], Acc) ->
  reverse(T, [H|Acc]);
reverse([], Acc) ->
  Acc.
