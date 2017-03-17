% power
% ?x ?n ?result
pow(_,0,1):-!.
pow(X, N, RESULT):-
  I is N - 1,
  pow(X, I, NEW_RESULT),
  RESULT is X * NEW_RESULT.

% sum
% ?x ?k ?sum
sum(_, 0, 1):-!.
sum(X, K, SUM):-
  pow(X, K, POW),
  I is K - 1,
  sum(X, I, NEW_SUM),
  SUM is NEW_SUM + (K * POW).

% ?x ?k ?result
func(X, K, F_RESULT):-
  (	X >= 1,
  X =< 2,
  pow(X, K, RESULT1)s,
  F_RESULT is RESULT1 + 15 ).
func(X, K, F_RESULT):-
  (	X > 2,
  sum(X, 3, RESULT2),
  F_RESULT is RESULT2	).
