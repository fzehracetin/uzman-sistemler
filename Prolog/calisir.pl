kapsar(miami, amerika).
kapsar(berlin, almanya).
kapsar(venedik, italya).

vardir(bin, hilmi, gondol, berlin, 1).

vardir2(git, M, _, Yer, _) :- vardir(_, M, _, Yer, _).
vardir2(F, M, B, Yer2, I) :- kapsar(Yer1, Yer2), vardir2(F, M, B, Yer1, I).

vardir2(calisir, hilmi, _, ferrari, _):- vardir2(git, hilmi, _, italya, _).
vardir2(calisir, hilmi, _, mercedes, _):- vardir2(git, hilmi, _, almanya, _).
vardir2(calisir, hilmi, _, google, _):- vardir2(git, hilmi, _, amerika, _).