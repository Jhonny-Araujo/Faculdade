
%inicializa direto na main.
:- initialization(main).

%Adiciona a base de dados
:-include("bd01.pl").
:-include("bd02.pl").


%Busca na Base de dados
dialogo(Duvida):-
    resposta(Resposta,Duvida),
    write(Resposta)
.

dialogo(Duvida):-
    nl,nl,
    write("Não consegui compreender a sua pergunta"),
    nl,nl
.

main:-
    nl,
    nl,
    write("Sou o Sr. Boot, como posso ajuda-lo? (Use ASPAS DUPLAS para perguntar e ponto final depois das aspas)"),
    nl,
    ouvir
.

%Ler conversa com usario
ouvir:-
    nl,nl,
    write("-->"),
    read(FALAR),
    falar(FALAR)
.

%responde a duvida
falar(OUVIR):-
    nl,
    dialogo(OUVIR),
    ouvir
.

