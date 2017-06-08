-module(lab13).
-export[func/2].

% func::K, X -> Result
func(K, X) when X > 1, X < 2 ->
    pow(X, K) + 15;
func(_, X) when X > 2 ->
    sum(X, 3, 0).

% pow::X, pow -> Pow
pow(X, K) when K > 1 ->
    X * pow(X, K - 1);
pow(X, 1) ->
    X.

% sum::X, K, Accumulator -> Sum
sum(X, K, Acc) when K >= 1 ->
  sum(X, K - 1, pow(X, K) * K + Acc);
sum(_, 0, Acc) ->
  Acc.
