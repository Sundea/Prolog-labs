
% ?female
is_female(anastasia).
is_female(laura).

% ?male
is_male(piter).
is_male(ashot).
is_male(logan).

% ?parent, ?child
is_parent(laura, logan).
is_parent(logan, ashot).
is_parent(piter, anastasia).
is_parent(piter, laura).

% ?maleCousin, ?grandParent
is_grand_male_cousin(Child, Grandma2):-
	is_parent(Parent, Child),
	is_parent(Grand, Parent),
	is_parent(Parent2, Grandma2),
	is_parent(Parent2, Grand),
    is_male(Child),
	Grandma2 \= Grand.
