yazdir(M):-
not(M=0),
write(M),
write(' '),
K is M-1,
yazdir(K).

fyazdir(X):-
not(X=0),
write('f'),
Y is X-1,
fyazdir(Y).