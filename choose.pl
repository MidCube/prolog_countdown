% choose(N,List,Result,Remaining) unifies Result with N items from List with the rest in Remaining

choose(0,Remaining,[],Remaining).
choose(N,Result,[A|B],Remaining):-
    append(H,[A|T],Result),
    N1 is N-1,
    choose(N1,T,B,S),
    append(H,S,Remaining).
