:-include('isimler_fiiller.pl').
:-include('cikarim.pl').


printer:- 
	unvan(Kisi, Unvan), write( Kisi), write( ' '), write( Unvan), 
	write(' ('), write( Kisi), write( ' '), write( Unvan), write( 'dır.)'), nl, fail
	;
	neiseyarar(Kisi, Unvan, Fiil2), write( Kisi), write( ' '), write( Fiil2), 
	write(' ('), write( Kisi), write( ' '), write( Unvan), write( ' ise '), 
	write(Unvan), write( 'lar/ler '), write( Fiil2), write( ' yaparsa, '),
	write( Kisi), write( ' '), write( Fiil2), write( ' yapar.)'), nl, fail
	;
	neolur(Kisi, Unvan, Fiil2, Fiil3), write( Kisi), write( ' '), write( Fiil3), 
	write( ' ('), write( Kisi), write( ' '), write( Unvan), write( ' ise '), 
	write( Unvan), write( 'lar/ler '), write( Fiil2), write( ' yaparsa, '),
	write( Fiil2), write( ' '), write( Fiil3), write( 'e sebep oluyorsa '),
	write( Kisi), write( ' '), write( Fiil3), write( ' yapar.)'), nl, fail
	;
	open('X.txt', write, Stream),
	( 
	unvan(Kisi, Unvan), write(Stream, Kisi), write(Stream, ' '), write(Stream, Unvan), 
	write(Stream, ' ('), write(Stream, Kisi), write(Stream, ' '), write(Stream, Unvan), write(Stream, 'dır.)'), nl(Stream), fail
	;
	neiseyarar(Kisi, Unvan, Fiil2), write(Stream, Kisi), write(Stream, ' '), write(Stream, Fiil2), 
	write(Stream, ' ('), write(Stream, Kisi), write(Stream, ' '), write(Stream, Unvan), write(Stream, ' ise '), 
	write(Stream, Unvan), write(Stream, 'lar/ler '), write(Stream, Fiil2), write(Stream, ' yaparsa, '),
	write(Stream, Kisi), write(Stream, ' '), write(Stream, Fiil2), write(Stream, ' yapar.)'), nl(Stream), fail
	;
	neolur(Kisi, Unvan, Fiil2, Fiil3), write(Stream, Kisi), write(Stream, ' '), write(Stream, Fiil3), 
	write(Stream, ' ('), write(Stream, Kisi), write(Stream, ' '), write(Stream, Unvan), write(Stream, ' ise '), 
	write(Stream, Unvan), write(Stream, 'lar/ler '), write(Stream, Fiil2), write(Stream, ' yaparsa, '),
	write(Stream, Fiil2), write(Stream, ' '), write(Stream, Fiil3), write(Stream, 'e sebep oluyorsa '),
	write(Stream, Kisi), write(Stream, ' '), write(Stream, Fiil3), write(Stream, ' yapar.)'), nl(Stream), fail
	;true
	),
	close(Stream).
