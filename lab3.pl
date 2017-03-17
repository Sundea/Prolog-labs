% ?chepear_currency ?other_currency
costs_more(gbp, eur).
costs_more(eur, usd).
costs_more(usd, uah).
costs_more(uah, rub).
costs_more(rub, jpy).

% ?currency1, ?currency2
is_more_expensive(C1, C2):-
	costs_more(C1, C2).
is_more_expensive(C1, C2):-
	costs_more(C1, C),
	is_more_expensive(C, C2).
