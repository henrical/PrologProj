%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM: 
%       ALUNOS: 
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tab(Tabuleiro):- Tabuleiro=[(top,left),(top,middle),(top,right),(middle,left),(middle,middle),(middle,right),(bottom,left),(bottom,middle),(bottom,right)].

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


