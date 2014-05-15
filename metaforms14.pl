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


tSimples(A,Linha,Coluna,Tabuleiro):-
	(coloca(A,Linha,Coluna,Tabuleiro);
	coloca(A,center,Coluna,Tabuleiro)).


tInvertido(A,Linha,Coluna,Tabuleiro):-
	(coloca(A,Linha,Coluna,Tabuleiro);
	 coloca(A,center,Coluna,Tabuleiro)).

tLeft(A,Linha,Coluna,Tabuleiro):-
	(coloca(A,Linha,Coluna,Tabuleiro);
	 coloca(A,Linha,middle,Tabuleiro)).

tRight(A,Linha,Coluna,Tabuleiro):-
	(coloca(A,Linha,Coluna,Tabuleiro);
	 coloca(A,Linha,middle,Tabuleiro)).

cobra(A,Linha,Coluna,Tabuleiro):-
	(coloca(A,Linha,Coluna,Tabuleiro);
	 coloca(A,Linha,middle,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cantoTopRight(A,Linha,Coluna,Tabuleiro):-
	     (coloca(A,Linha,Coluna,Tabuleiro);
	      coloca(A,Linha,middle,Tabuleiro);
	      coloca(A,center,Coluna,Tabuleiro);
	      coloca(A,center,middle,Tabuleiro)).

cantoTopLeft(A,Linha,Coluna,Tabuleiro):-
	     (coloca(A,Linha,Coluna,Tabuleiro);
	      coloca(A,Linha,middle,Tabuleiro);
	      coloca(A,center,Coluna,Tabuleiro);
	      coloca(A,center,middle,Tabuleiro)).

cantoBottomLeft(A,Linha,Coluna,Tabuleiro):-
	     (coloca(A,Linha,Coluna,Tabuleiro);
	      coloca(A,Linha,middle,Tabuleiro);
	      coloca(A,center,Coluna,Tabuleiro);
	      coloca(A,center,middle,Tabuleiro)).

cantoBottomRight(A,Linha,Coluna,Tabuleiro):-
	     (coloca(A,Linha,Coluna,Tabuleiro);
	      coloca(A,Linha,middle,Tabuleiro);
	      coloca(A,center,Coluna,Tabuleiro);
	      coloca(A,center,middle,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trioLeft(A,Linha,Coluna,Tabuleiro):-
	 (coloca(A,Linha,Coluna,Tabuleiro);
	  coloca(A,Linha,middle,Tabuleiro)).

trioRight(A,Linha,Coluna,Tabuleiro):-
	 (coloca(A,Linha,Coluna,Tabuleiro);
	  coloca(A,Linha,middle,Tabuleiro)).

diagonalGrave(A,Linha,Coluna,Tabuleiro):-
	     (coloca(A,Linha,Coluna,Tabuleiro);
	      coloca(A,Linha,middle,Tabuleiro)).
	  
diagonalAguda(A,Linha,Coluna,Tabuleiro):-
	     (coloca(A,Linha,Coluna,Tabuleiro);
	      coloca(A,Linha,middle,Tabuleiro)).
				
/***************************************************
 *Testes pista simples
 *
 **************************************************/

%tSimples
desafio(tSimples, Tabuleiros) :- findall(Tabuleiro, 
        tSimples(peca(quadrado, azul), center, right, Tabuleiro), Tabuleiros).

%tInvertido
desafio(tInvertido, Tabuleiros) :- findall(Tabuleiro, 
        tInvertido(peca(quadrado, azul), center, _ , Tabuleiro), Tabuleiros).

%tLeft
desafio(tLeft, Tabuleiros) :- findall(Tabuleiro, 
        tLeft(peca(quadrado, azul), _, left, Tabuleiro), Tabuleiros).

%tRight
desafio(tRight, Tabuleiros) :- findall(Tabuleiro, 
        tRight(peca(quadrado, azul), _, middle, Tabuleiro), Tabuleiros).


