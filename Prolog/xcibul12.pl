% Zadání è. 40:
% Napište program øešící úkol daný predikátem u40(LIN), kde LIN je vstupní 
% celoèíselný seznam s nejménì dvìma èísly. Predikát je pravdivý (má hodnotu 
% true), pokud se v seznamu LIN pravidelnì støídají lichá a sudá èísla, 
% jinak je nepravdivý (má hodnotu false).

% Testovací predikáty:
u40_1:- u40([4,-3,2,1,8,3,8,-1]).			% true
u40_2:- u40([4,-3,2,1,8,4,8,-1]).			% false
u40_3:- u40([-3,2]).					% true
u40_r:- write('Zadej LIN: '),read(LIN),u40(LIN).

u40(LIN) :- even_first(LIN); odd_first(LIN).
    
even(X) :- X mod 2 =:= 0, !.
odd(X) :- X mod 2 =\= 0, !.

even_first([]) :- !.

even_first([H1, H2|T]) :- 
    even(H1), !, 
    odd(H2), !, 
    even_first(T).
even_first([H|T]) :- even(H).

odd_first([]) :- !.
odd_first([H1, H2|T]) :- 
    odd(H1), !,
    even(H2), !,
    odd_first(T).
odd_first([H|T]) :- odd(H).
