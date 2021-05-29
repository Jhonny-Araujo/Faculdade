
:- [bd01],
    dynamic(resposta/2).


pergunta(Duvida,Resposta):-
    resposta(Resposta,Duvida),!.

finalizar_conversa(Entrada):-
    Entrada = bye.

responder(Lista,Resposta):-
    nth0(0,Lista,Resposta),!.


main:-
        write("Sou o Sr. Boot, como posso ajuda-lo? (Use ASPAS DUPLAS antes da pergunta)"),

    repeat,
     nl,
     nl,nl,
     write("-->"),
     read(Duvida),
     pergunta(Duvida,Resposta),
     nl,
     write(Resposta),
     nl.


