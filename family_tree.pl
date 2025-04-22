% Basic Facts
parent(john, alice).
parent(john, bob).
parent(mary, alice).
parent(mary, bob).

parent(bob, charlie).
parent(bob, diana).
parent(lisa, charlie).
parent(lisa, diana).

parent(alice, emma).
parent(alice, frank).
parent(tom, emma).
parent(tom, frank).

male(john).
male(bob).
male(charlie).
male(frank).
male(tom).

female(mary).
female(alice).
female(lisa).
female(diana).
female(emma).

% Derived Relationships

% Grandparent
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Sibling
sibling(X, Y) :- 
    parent(P, X), 
    parent(P, Y),
    X \= Y.

% Cousin
cousin(X, Y) :- 
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Children (reverse of parent)
child(X, Y) :- parent(Y, X).

% Descendant (Recursive)
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Y, Z), descendant(X, Z).

