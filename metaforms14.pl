%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM:169
%       ALUNOS: 
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

peca(triangulo,azul).
peca(triangulo,amarelo).
peca(triangulo,vermelho).
peca(quadrado,azul).
peca(quadrado,amarelo).
peca(quadrado,vermelho).
peca(circulo,azul).
peca(circulo,amarelo).
peca(circulo,vermelho).

coloca(A, top, left, [A,_,_,_,_,_,_,_,_]).
coloca(A, top, middle, [_,A,_,_,_,_,_,_,_]).
coloca(A, top, right, [_,_,A,_,_,_,_,_,_]).
coloca(A, center, left, [_,_,_,A,_,_,_,_,_]).
coloca(A, center, middle, [_,_,_,_,A,_,_,_,_]).
coloca(A, center, right, [_,_,_,_,_,A,_,_,_]).
coloca(A, bottom, left, [_,_,_,_,_,_,A,_,_]).
coloca(A, bottom, middle, [_,_,_,_,_,_,_,A,_]).
coloca(A, bottom, right, [_,_,_,_,_,_,_,_,A]).

/*
tSimples(A,_,Coluna,Tabuleiro):-
	(coloca(A,top,Coluna,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro);
	coloca(A,center,middle,Tabuleiro);
	coloca(A,bottom,middle,Tabuleiro)).
*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tSimples(A,bottom,_,Tabuleiro):-
	linhaTriplaHorizontal(A, center, Tabuleiro);
	coloca(A,center,middle,Tabuleiro).

tSimples(A,top,_,Tabuleiro):-
	linhaTriplaHorizontal(A, top, Tabuleiro);
	coloca(A,center,middle,Tabuleiro).

tSimples(A,center,_,Tabuleiro):-
	linhaTriplaHorizontal(A, center, Tabuleiro);
	coloca(A,bottom,middle,Tabuleiro).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tInvertido(A,top,_,Tabuleiro):-
	linhaTriplaHorizontal(A, center, Tabuleiro);
	coloca(A,top,middle,Tabuleiro).

tInvertido(A,center,_,Tabuleiro):-
	linhaTriplaHorizontal(A, center, Tabuleiro);
	coloca(A,top,middle,Tabuleiro).

tInvertido(A,bottom,_,Tabuleiro):-
	linhaTriplaHorizontal(A,bottom, Tabuleiro);
	coloca(A,center,middle,Tabuleiro).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tLeft(A,_,right,Tabuleiro):-
	linhaTriplaVertical(A, middle, Tabuleiro);
	coloca(A,center,right,Tabuleiro).

tLeft(A,_,middle,Tabuleiro):-
	linhaTriplaVertical(A, middle, Tabuleiro);
	coloca(A,center,right,Tabuleiro).

tLeft(A,_,left,Tabuleiro):-
	linhaTriplaVertical(A, left, Tabuleiro);
	coloca(A,center,middle,Tabuleiro).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tRight(A,_,left,Tabuleiro):-
	linhaTriplaVertical(A, middle, Tabuleiro);
	coloca(A,center,left,Tabuleiro).

tRight(A,_,middle,Tabuleiro):-
	linhaTriplaVertical(A, middle, Tabuleiro);
	coloca(A,center,left,Tabuleiro).

tRight(A,_,right,Tabuleiro):-
	linhaTriplaVertical(A, right, Tabuleiro);
	coloca(A,center,middle,Tabuleiro).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


/***************************************************
 * Pistas axiliares
 *
 **************************************************/

linhaTriplaHorizontal(A, Linha, Tabuleiro) :-
     coloca(A, Linha,_, Tabuleiro).

linhaTriplaVertical(A, Coluna, Tabuleiro) :-
     coloca(A,_,Coluna, Tabuleiro).


/***************************************************
 *Testes pista simples
 *
 **************************************************/

%tSimples
desafio(tSimples, Tabuleiros) :- findall(Tabuleiro, 
        tSimples(peca(quadrado, azul), center, _, Tabuleiro), Tabuleiros).

%tInvertido
desafio(tInvertido, Tabuleiros) :- findall(Tabuleiro, 
        tInvertido(peca(quadrado, azul), center, _ , Tabuleiro), Tabuleiros).

%tLeft
desafio(tLeft, Tabuleiros) :- findall(Tabuleiro, 
        tLeft(peca(quadrado, azul), _, left, Tabuleiro), Tabuleiros).

%tRight
desafio(tRight, Tabuleiros) :- findall(Tabuleiro, 
        tRight(peca(quadrado, azul), _, middle, Tabuleiro), Tabuleiros).


