
% db for 10th lab
initDb10:-
  recorded(points,point(_,_,_)),!.
initDb10:-
	recorda(points,point(a,0,0)),
	recorda(points,point(b,1,0)),
	recorda(points,point(c,0,1)),
	recorda(points,point(d,0,3)),
  recorda(points,point(e,4,5)).


lab10(Result):-
  initDb10,
  findall([P1, P2, P3],(checkPoints(P1, P2, P3)),L),
  sortSublists(L, SortedL),
  removeDuplicates(SortedL, Result).


% +source list, -result list
sortSublists([H | T], [S|R]) :-
  sort(H, S),
  sortSublists(T, R).
sortSublists([],[]).


% +source list, -result list
removeDuplicates([H | T], List) :-
  member(H, T), !,
  removeDuplicates(T, List).
removeDuplicates([H| T], [H| T1]) :-
  removeDuplicates(T, T1).
removeDuplicates([], []).


% -triangle point, -triangle point, -triangle point,
checkPoints(X, Y, Z):-
  recorded(points,point(A, Ax, Ay)),
  recorded(points,point(B, Bx, By)),
  A \= B,
  recorded(points,point(C, Cx, Cy)),
  C \= A,
  C \= B,
  isRightTriangle(Ax, Ay, Bx, By, Cx, Cy),
  X = A,
  Y = B,
  Z = C.


% +A abs, +A ord, +B abs, +B ord, -Vect abs, -Vect ord.
vector(Ax, Ay, Bx, By, X, Y):-
	X is Bx - Ax,
	Y is By - Ay.


% +A abs vector, +A ord vector, +B abs vector, +B ord vector
isPerpedicularVectors(Ax, Ay, Bx, By):-
	M is Ax * Bx - Ay * By,
	M == 0.


% +A abs, +A ord, +B abs, +B ord, +C abs, +C ord,
isRightTriangle(Ax, Ay, Bx, By, Cx, Cy):-
	vector(Ax, Ay, Bx, By, X1, Y1),
	vector(Ax, Ay, Cx, Cy, X2, Y2),
	isPerpedicularVectors(X1, Y1, X2, Y2).
isRightTriangle(Ax, Ay, Bx, By, Cx, Cy):-
	vector(Ax, Ay, Bx, By, X1, Y1),
	vector(Bx, By, Cx, Cy, X2, Y2),
	isPerpedicularVectors(X1, Y1, X2, Y2).
isRightTriangle(Ax, Ay, Bx, By, Cx, Cy):-
	vector(Cx, Cy, Bx, By, X1, Y1),
	vector(Ax, Ay, Cx, Cy, X2, Y2),
	isPerpedicularVectors(X1, Y1, X2, Y2).
