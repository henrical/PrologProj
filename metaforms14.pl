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

tSimples(A,Linha,Tabuleiro):-
	linhaTriplaHorizontal(A, Linha, Tabuleiro);
	 coloca(A,center,middle,Tabuleiro);
	 coloca(A,bottom,middle,Tabuleiro).

tInvertido(A,Linha,Tabuleiro):-
	(linhaTriplaHorizontal(A, Linha, Tabuleiro);
	 coloca(A,top,middle,Tabuleiro);
	 coloca(A,center,middle,Tabuleiro)).

/***************************************************
 * Pistas axiliares
 *
 **************************************************/

linhaTriplaHorizontal(A, Linha, Tabuleiro) :-
     coloca(A, Linha,_, Tabuleiro).

%linhaTriplaVertical(A, Coluna, Tabuleiro) :-
%     coloca(A,_,Coluna, Tabuleiro).


/***************************************************
 *Testes pista simples
 *
 **************************************************/

%tSimples
desafio(tSimples, Tabuleiros) :- findall(Tabuleiro, 
        tSimples(peca(quadrado, azul), center, Tabuleiro), Tabuleiros).

%tInvertido
desafio(tInvertido, Tabuleiros) :- findall(Tabuleiro, 
        tSimples(peca(quadrado, azul), center , Tabuleiro), Tabuleiros).




