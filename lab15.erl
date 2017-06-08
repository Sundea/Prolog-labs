-module(lab15).
-export[remove_even/2].

% func::List, Accumulator -> FilteredList
remove_even([H|T], Acc) ->
  if
    (H rem 2) == 1 ->
      remove_even(T, Acc);
    true ->
      remove_even(T, [H|Acc])
  end;
remove_even([], Acc) -> Acc.
