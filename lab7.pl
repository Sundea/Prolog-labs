
%-Matrix, Result
replaceElements([[A,B|R1],[C,D|R2]|Rt], Result):-
	replaceLast([[D,B|R1],[C,A|R2]|Rt], Result).

%-Matrix, -Result
replaceLast([R|Rt1],[R|Rt2]):-
	replaceLast(Rt1, Rt2).
replaceLast([R1,R2],[R11,R12]):-
	swapInLastRows([R1,R2],[R11,R12]).

%+Matrix, -Result
swapInLastRows([[H1|T1],[H2|T2]],[[H1|T3],[H2|T4]]):-
	swapInLastRows([T1,T2],[T3,T4]).
swapInLastRows([[A,B],[C,D]],[[D,B],[C,A]]).
