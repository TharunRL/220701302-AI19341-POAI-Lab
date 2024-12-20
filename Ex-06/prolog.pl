/*FACTS :: */
male(peter).
male(john).
male(chris).
male(kevin).
female(betty).
female(jeny).
female(lisa).
female(helen).
parentOf(chris,peter).
parentOf(chris,betty).
parentOf(helen,peter).
parentOf(helen,betty).
parentOf(kevin,chris).
parentOf(kevin,lisa).
parentOf(jeny,john).
parentOf(jeny,helen).
/*RULES :: */
/* son,parent
* son,grandparent*/
father(X,Y):- male(Y),
parentOf(X,Y).
mother(X,Y):- female(Y),
parentOf(X,Y).
grandfather(X,Y):- male(Y),
parentOf(X,Z),
parentOf(Z,Y).
grandmother(X,Y):- female(Y),
parentOf(X,Z),
parentOf(Z,Y).
brother(X,Y):- male(Y),
father(X,Z),
father(Y,W),
Z==W.
sister(X,Y):- female(Y),
father(X,Z),
father(Y,W),
Z==W.
