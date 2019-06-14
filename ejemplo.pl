padreDe(julian,juan).
padreDe(julian,luis).
padreDe(roman,julian).
padreDe(roman,lucas).
padreDe(roman,german).
padreDe(pablo,ana).
madreDe(sofia,ana).
madreDe(maria,julian).
madreDe(ana,juan).

tienePadres(Persona):-
    padreDe(_,Persona),
    madreDe(_,Persona).

hermanoDe(P1,P2):-
    padreDe(A,P1),
    padreDe(A,P2),
    P1\=P2.

tioDe(P1,P2):-
    padreDe(A,P2),
    hermanoDe(P1,A).
    
abueloDe(P1,P2):-
    padreDe(P1,A),
    padreDe(A,P2).

descendienteDe(P1,P2):-
    padreDe(P1,P2).
    
descendienteDe(P1,P2):-
    padreDe(P1,A),
    descendienteDe(A,P2).
    


    
    