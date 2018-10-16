mother(X,Y) :- parent(X,Y),female(X).
father(X,Y) :- parent(X,Y),male(X).
child(X,Y) :- parent(Y,X).
sibling(X,Y) :- parent(Z,X),parent(Z,Y),X\=Y.
sister(X,Y) :- sibling(X,Y),female(X).
brother(X,Y) :- sibling(X,Y),male(X).
daughter(X,Y) :- child(X,Y),female(X).
son(X,Y) :- child(X,Y),male(X).
uncle(X,Y) :- brother(X,Z),parent(Z,Y),male(X).
aunt(X,Y) :- sister(X,Z),parent(Z,Y),female(X).
cousin(X,Y) :- uncle(Z,Y),child(X,Z).
cousin(X,Y) :- aunt(Z,Y),child(X,Z).


male(mark).
male(mel).
male(richard).
male(tom).
male(adam).
female(amy).
female(jane).
female(joan).
female(betty).
female(rosa).
female(fran).

parent(mel,joan).
parent(jane,betty).
parent(jane,tom).
parent(richard,adam).
parent(richard,rosa).
parent(joan,fran).
parent(mark,jane).
parent(mark,richard).
parent(amy,jane).
parent(amy,richard).
parent(amy,joan).
