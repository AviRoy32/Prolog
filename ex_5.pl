%male
male(abid).
male(anik).
male(shopon).
male(rahman).

%female
female(riya).
female(nayona).
female(ruma).

%parent
parent(abid,anik).
parent(abid,riya).
parent(anik,nayona).
parent(anik,rahman).
parent(riya,shopon).
parent(riya,ruma).

%rules
father(X,Y) :- parent(X,Y),male(X).
mother(X,Y) :- parent(X,Y),female(X).

sibling(X,Y) :- parent(Z,X),parent(Z,Y),X\=Y.

brother(X,Y) :- sibling(X,Y),male(X).
sister(X,Y) :- sibling(X,Y),female(X).

grandfather(X,Z) :-parent(X,Y),parent(Y,Z),male(X).
grandmother(X,Z) :- parent(X,Y),parent(Y,Z),female(X).

%queries
grandfather(X,Y).
grandmother(X,Y).
listing(male).