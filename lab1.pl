%?AnimalName, ?Food
eat_kind_of_food(horse, grass).
eat_kind_of_food(koala, grass).
eat_kind_of_food(lion, meat).
eat_kind_of_food(wolf, meat).

%?Animal1, ?Animal2
can_drink_together(A,B):-
	eat_kind_of_food(A, Food),
	eat_kind_of_food(B, Food),
	A \= B.








