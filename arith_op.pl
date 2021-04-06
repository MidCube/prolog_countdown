:- [eval].

isGreater(A, B) :-
    eval(A, Av),
    eval(B, Bv),
    Av>Bv.
notOne(A) :-
    eval(A, Av),
    Av=\=1.
isFactor(A, B) :-
    eval(A, Av),
    Av=\=0,
    eval(B, Bv),
    0 is Bv rem Av.

arith_op(A, B, plus(A, B)).
arith_op(A, B, minus(A, B)) :-
    isGreater(A, B).
arith_op(A, B, minus(B, A)) :-
    isGreater(B, A).
arith_op(A, B, mult(A, B)) :-
    notOne(A),
    notOne(B).
arith_op(A, B, divide(A, B)) :-
    notOne(B),
    isFactor(B, A).
arith_op(A, B, divide(B, A)) :-
    notOne(A),
    isFactor(A, B).
