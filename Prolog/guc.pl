guc(X, 1, X).
guc(X, Y, Z):- 
	Y > 1,
	G is Y - 1,
	guc(X, G, T),
	Z is T*X.
	
fact(1, 1).
fact(N, F):-
	N > 1,
	M is N-1,
	fact(M, T),
	F is N*T.

 