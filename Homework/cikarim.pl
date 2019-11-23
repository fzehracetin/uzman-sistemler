:- dynamic unvan/2.
:- dynamic neiseyarar/3.
:- dynamic neolur/4.

% Bir kişi bir işi yapıyorsa o işi yapanlarla aynı ünvana sahiptir.
cumle(Kisi,_,_,_,Fiil):- iliski(Fiil,'kim/ne yapar?', Unvan), assert(unvan(Kisi, Unvan)), fail.

% Bir kişi bir ünvana sahipse o ünvandakilerin yaptığı işleri yapar.
cumle(Kisi,_,_,_,Fiil):- unvan(Kisi, Unvan), iliski(Unvan, 'ne ise yarar', Fiil2), assert(neiseyarar(Kisi, Unvan, Fiil2)), fail.

% Bir kişi bir işi yapıyorsa o işi yapınca yapılan işleri de yapar.
cumle(Kisi,_,_,_,Fiil):- neiseyarar(Kisi, Unvan, Fiil2), iliski(Fiil2, 'yapinca ne olur?', Fiil3), assert(neolur(Kisi, Unvan, Fiil2, Fiil3)), fail.
