%+List, -Result list
main(List, Result):-
	splitToEqual(List, FirstHalf, SecondHalf),
	reverse(SecondHalf, RevSecondHalf),
	append(RevSecondHalf, FirstHalf, Result).


%+List, -FirstHalf, -SecondHalf
splitToEqual(List, FirstHalf, SecondHalf):-
	length(List, Length),
	Bound is Length/2 + 1,
	split(List, 1, Bound, FirstHalf, SecondHalf).


%+List, +Iterator, +Bound, -FirstHalf, -SecondHalf
split([X|Xs], I, Bound,[X|H1],H2):-
	I < Bound,
	NewI is I+1,
	split(Xs, NewI, Bound, H1, H2).
split(H2, Bound, Bound,[],H2).
