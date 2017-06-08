%?drink(?Name, ?Density, ?Color)
drink_db:-
    recorded(drink, _),!.
drink_db:-
    recordz(drink,(d1,6,red)),
    recordz(drink,(d2,5,orange)),
    recordz(drink,(d3,4,yellow)),
    recordz(drink,(d4,3,green)),
    recordz(drink,(d5,2,blue)),
    recordz(drink,(d6,1,red)).


%?Color, ?NextColor
rainbow(red, orange).
rainbow(orange, yellow).
rainbow(yellow, green).
rainbow(green, blue).
%rainbow(blue, red).
%rainbow(A, A).


%?Firstdrink? -Multidrink
drink_main(D1,[D1|Ds]):-
    var(D1),
    first_drink(D1, D, C),
    drink_generator(D, C, 1, 5, Ds).
drink_main(D1, [D1|Ds]):-
    nonvar(D1),
    recorded(drink, (D1, D, C)),
    drink_generator(D, C, 1, 5, Ds).


%+Density,+Color,-Multiring
drink_generator(D, C, Count, EndCount, [Drink|Drinks]):-
    Count =< EndCount,
    next_color(C, C1),
    recorded(drink, (Drink, D1, C1)),
    D > D1,
    drink_generator(D1, C1, Count + 1, EndCount, Drinks).
drink_generator(_, _, Count, EndCount, []):-
    Count > EndCount.


%?Color, ?NextColor
next_color(C, C1):-
    rainbow(C, C1).
next_color(C, C).
next_color(blue, red).



%-FirstRing, -Radius, -Color
first_drink(Drink,D,C):-
    D = 6,
    C = red,
    recorded(drink,(Drink,D,C)).








