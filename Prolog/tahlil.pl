tahlil(ahmet, tansiyon, 12).
tahlil(ahmet, ates, 34).
tahlil(ahmet, midebulantisi, 1).
tahlil(ahmet, basdonmesi, 0).

tahlil(mehmet, tansiyon, 15).
tahlil(mehmet, ates, 35).
tahlil(mehmet, midebulantisi, 1).
tahlil(mehmet, basdonmesi, 0).

tahlil(hilmi, tansiyon, 16).
tahlil(hilmi, ates, 39).
tahlil(hilmi, midebulantisi, 0).
tahlil(hilmi, basdonmesi, 1).

tahlil(mazhar, tansiyon, 18).
tahlil(mazhar, ates, 40).
tahlil(mazhar, midebulantisi, 1).
tahlil(mazhar, basdonmesi, 1).

yuksektansiyon(X):-tahlil(X, tansiyon, Y), Y > 13.
ates(X) :- tahil(X, ates, Y), Y > 37.
xh(A) :- ates(X), tahlil(X, midebulantisi, Z), Z == 1.
y(A) :- xh(A), yuksektansiyon(A).
z(A) :- Y(A), tahlil(X, basdonmesi, Z), Z == 1.