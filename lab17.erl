-module(lab17).
-export[task/0].

% task
task() ->
    replace(data()).

%-Matrix
data() ->
    [[1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11,12,13,14,15],
    [16,17,18,19,20]].

% replace::[FirstRow, SecondRow| Tail] -> Result
replace([F, S|T]) ->
  FF = replaceInRows(F, S),
  [L, PrevL| T1] = reverse(T, []),
  LReversed = reverse(L, []),
  PrevLReversed = reverse(PrevL, []),
  [F1Rev, S1Rev| _] = replaceInRows(LReversed, PrevLReversed),
  F1 = reverse(F1Rev, []),
  S1 = reverse(S1Rev, []),
  FF ++ T1 ++ [S1, F1].

% replaceInRows::FirstRow, SecondRow -> Result
replaceInRows([A, B| T1], [C, D| T2]) ->
  [[D, B|T1], [C, A|T2]].

% reverse::List, Accumutalor -> ReversedList
reverse([H|T], Acc) ->
  reverse(T, [H|Acc]);
reverse([], Acc) ->
  Acc.
