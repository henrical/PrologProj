%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM: 169
%       ALUNOS: 75838 e 76062
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

/*****************************************************************
 *1-Pistas intermedias
 *
 *****************************************************************/

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

%==================================================================
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

%==================================================================
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
				
/****************************************************************
 *2-Regras auxiliares usadas no check
 *
 ****************************************************************/

/*********                                                *********
 * Escolher                                                       *
 * Utilizada para remover um dado membro "Element" da lista.      *
 *                                                                *
 *********                                                *********/
escolher([Head | Tail], Head, Tail).
escolher([Head | Tail], Element, [Head | Tail2]) :-
	escolher(Tail, Element, Tail2). 


/*********                                                *********
 * Permutar                                                       *
 * Recebe duas listas, uma completa e outra imcompleta, e devolve *
 * varias opcoes de preenchimento da lista incompleta de modo a   *
 * que tenha os mesmos elementos que a primeira                   *
 *********                                                *********/

permutar([], []). 
permutar(List, [Head | R]) :-  
	escolher(List, Head, L1), permutar(L1, R). 

/****************************************************************
 *3-predicado check
 *
 ****************************************************************/

check(Tab1, Tab2) :- 
	Pecas = [peca(triangulo, azul), peca(triangulo, amarelo), 
	peca(triangulo, vermelho), peca(circulo, azul), peca(circulo, amarelo), 	peca(circulo, vermelho), peca(quadrado, azul), peca(quadrado, amarelo), 	peca(quadrado, vermelho)], 
	permutar(Pecas, Tab1), 
	Tab2 = Tab1.

/******************************************************************************/

