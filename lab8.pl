% +FirstX, +EndX +Step, +N, -ResultList
listFunction(X, EndX, Step, N, [H|S]):-
	X =< EndX,
	afrimeticExpression(X, N, H),
	X1 is X + Step,
	listFunction(X1, EndX, Step, N, S).



%+X, +Count, +Result
afrimeticExpression(X, N, Result):-
	Numerator is tan(X),
	denominator(X, N, Denominator),
	Result is Numerator/Denominator.


%+X, +Count, +ResultList
denominator(X, N, Result):-
	sum(X, 1, N, 0, Result).


%+X, +I, +Count, +Accumulator, -Sum
sum(X, I, N, Accumulator, Sum):-
	I =< N, !,
	Itmp is I + 1,
	AccTmp is Accumulator + (I * X),
	sum(X, Itmp, N, AccTmp, Sum).
