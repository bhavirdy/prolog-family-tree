male(greg).
male(adam).
male(trent).
male(martin).
male(marcus).
male(gabriel).
male(dave).
male(michael).

female(lucy).
female(amy).
female(kgomotso).
female(naledi).
female(karen).
female(michelle).

parent(trent, greg).
parent(naledi, greg).
parent(trent, adam).
parent(trent, kgomotso).
parent(karen, adam).
parent(karen, kgomotso).
parent(gabriel, marcus).
parent(gabriel, michelle).
parent(gabriel, naledi).
parent(amy, marcus).
parent(amy, michelle).
parent(amy, naledi).
parent(dave, trent).
parent(dave, martin).
parent(lucy, trent).
parent(lucy, martin).
parent(martin, michael).

married(amy, gabriel).
married(lucy, dave).
married(naledi, trent).

spouse(X, Y) :- 
    married(X, Y); 
    married(Y, X).

mother(X, Y) :- 
    parent(X, Y), 
    female(X).

father(X, Y) :- 
    parent(X, Y), 
    male(X).

sibling(X, Y) :- 
    father(F, X),  
    father(F, Y),
    mother(M, X),
    mother(M, Y),
    X \= Y.  

brother(X, Y) :-
    sibling(X, Y),
    male(X).

sister(X, Y) :-
    sibling(X, Y),
    female(X).

half_sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    not(sibling(X, Y)),
    X \= Y.

half_brother(X, Y) :-
    half_sibling(X, Y),
    male(X).

half_sister(X, Y) :-
    half_sibling(X, Y),
    female(X).

uncle(X, Y) :-
    parent(P, Y),
    brother(X, P).

aunt(X, Y) :-
    parent(P, Y),
    sister(X, P).

grandparent(X, Y) :-
    parent(X, P),
    parent(P, Y).

grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).

grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

nephew(X, Y) :-
    parent(P, X),
    sibling(P, Y),
    male(X).

niece(X, Y) :-
    parent(P, X),
    sibling(P, Y),
    female(X).

cousin(X, Y) :-
    parent(ParentX, X),
    parent(ParentY, Y),
    sibling(ParentX, ParentY),
    X \= Y.

in_law(X, Y) :-
    spouse(S, X),
    (parent(Y, S); sibling(Y, S)).

brother_in_law(X, Y) :-
    spouse(S, X),
    brother(Y, S). 

sister_in_law(X, Y) :-
    spouse(S, X),
    sister(Y, S).