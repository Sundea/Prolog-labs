%?list_of_numbers, ?result_list
removeOdds([],[]).
removeOdds([Head|Tail],Answer):-
	Head mod 2 =:= 1,
	removeOdds(Tail,Answer),
	!.
removeOdds([Head|Tail],[Head|AnswerTail]):-
	removeOdds(Tail,AnswerTail).
