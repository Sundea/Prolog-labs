-module(lab14).
-export[main/4].

% main::X1, Xn, H, N -> Result
main(X1, Xn, H, N) when X1 =< Xn ->
     [func(X1, N) | main(X1 + H, Xn, H, N)];
main(_, _, _, _) ->
     [].

% func::X, N -> Result
func(X, N) ->
  U = math:pow(math:tan(X), N),
  U / sum(X, N).


% sum::X, Iterator, Count -> Result
sum(X, I, N) when I < N ->
   (I * X) + sum(X, I + 1, N);
sum(X, N, N) ->
    (N * X).
