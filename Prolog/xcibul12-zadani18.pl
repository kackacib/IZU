divisible(L, X) :-  0 is X mod L, !.
divisible(L, X) :- X > L+1, divisible(L+1, X).


not_prime(X) :- integer(X), X > 2, divisible(2, X).

uloha18([], 0) :- !.
uloha18([H|T], N) :- not_prime(H), uloha18(T, N1), N is N1 + 1.
uloha18([_|T], N) :- uloha18(T, N).