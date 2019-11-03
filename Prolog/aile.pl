parent(tom, bob).
parent(tom, liz).
parent(pam, bob).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

offspring(bob, pam).
offspring(bob, tom).
offspring(liz, tom).
offspring(ann, bob).
offspring(pat, bob).
offspring(jim, pat).

female(liz).
female(pam).
female(ann).

male(tom).
male(bob).
male(pat).
male(jim).

offspring(Y, X):- parent(X, Y).
ata(X, Y):- parent(Z, Y), parent(X, Z).
sister(X, Y):- parent(Z, X), parent(Z, Y), female(X).
aunt(X, Y):- parent(Z, Y), male(Y), sister(X, Z).

predecessor(X, Z):- parent(X, Z).
predecessor(X, Z):- parent(X, Y), predecessor(Y, Z).


