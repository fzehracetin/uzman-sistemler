eder(asir, 100, yil).
eder(yil, 4, mevsim).
eder(mevsim, 3, ay).
eder(ay, 4, hafta).
eder(ay, 30, gun).
eder(gun, 24, saat).
eder(saat, 60, dakika).
eder(dakika, 60, saniye).
eder2(X, K, Y):- eder(X, K, Y).
eder2(X, K*M, Z):- eder(X, M, Y), eder2(Y, K, Z).
coz(N1, Obje1, Kac, Obje2):- (eder( Obje1, M, Obje2); eder2(Obje1, M, Obje2)),
 Kac is M*N1.