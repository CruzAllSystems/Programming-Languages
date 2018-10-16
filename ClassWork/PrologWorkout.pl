distance((X1,Y1), (X2,Y2), Z) :- Z is sqrt((X2-X1)*(X2-X1) + (Y2-Y1)*(Y2-Y1)).
factorial(0,1).
factorial(X,Return) :- X > 0, X2 is X-1, factorial(X2,Return2), Return is X * Return2.
member(X,[X|_]).
member(X,[_|T]) :- memeber(X,T).
vowel(X):- member(X,[a,e,i,o,u]).
n_vowels([],0).
n_vowels([X|T],N) :- vowel(X), n_vowels(T,N1), N is N1 + 1, !.
n_vowels([X|T],N) :- n_vowels(T,N).
last1([X],X).
last1([H|T],R) :- last1(T,R).
append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).
last2(L,R) :- append(_,[R],L).
list_length([],0).
list_length([_|T],R) :- list_length(T,R1), R is R1 + 1.
longer_list1(L1,L2) :- list_length(L1,R1), list_length(L2,R2), R1 < R2.
longer_list2([],_).
longer_list2([H|T],[H2|T2]) :- longer_list2(T1,T2).
    