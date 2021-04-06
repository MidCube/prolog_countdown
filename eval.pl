eval(plus(A, B), C) :- !,
    eval(A, A1),
    eval(B, B1),
    C is A1+B1.
eval(mult(A, B), C) :- !,
    eval(A, A1),
    eval(B, B1),
    C is A1*B1.
eval(minus(A,B),C) :- !,
    eval(A,A1),
    eval(B,B1),
    C is A1-B1.
eval(divide(A,B),C) :- !,
    eval(A,A1),
    eval(B,B1),
    C is A1/B1.
eval(A, A).

