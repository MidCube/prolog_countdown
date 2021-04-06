:- [choose].
:- [arith_op].

% countdown(Tiles,Target,Soln) unifies Soln
% with an arithmetic expression built from elements
% of Tiles which evaluates to Target

countdown([Soln|_],Target,Soln,D):-
    eval(Soln,R),
    diff(Target,R,D).

countdown(L,Target,Soln,D) :-
    choose(2,L,[A,B],R),
    arith_op(A,B,C),
    countdown([C|R],Target,Soln,D).

countdownDeepening(Tiles,Target,Soln):-range(0,100,D),countdown(Tiles,Target,Soln,D).

diff(A,B,C):-
    eval(A,A1),
    eval(B,B1),
    isGreater(A1,B1),
    C is A1-B1.

diff(A,B,C):-
    eval(A,A1),
    eval(B,B1),
    isGreater(B1,A1),
    C is B1-A1.

diff(A,B,C):-
    eval(A,A1),
    eval(B,B1),
    A1=B1,
    C=0.

range(Min,Max,Min):-Min<Max.
range(Min,Max,V):-NewLow is Min+1,NewLow<Max,range(NewLow,Max,V).
