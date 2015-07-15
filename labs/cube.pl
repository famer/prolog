#!/usr/bin/swipl -s

surround(X/Y, X1/Y, right):-
                X1 is X + 1.
surround(X/Y, X1/Y, left):-
                X > 1,
                X1 is X - 1.
surround(X/Y, X/Y1, bottom):-
                Y1 is Y + 1.
surround(X/Y, X/Y1, top):-
                Y > 1,
                Y1 is Y - 1.

turn(B, A, [A,B,C,D,E,F], [A,B,C,D,E,F], down).

turn(A, B, [A,B,C,D,E,F], [B,A,C,F,E,D], upside).

turn(A, C, [A,B,C,D,E,F], [C,E,B,D,A,F], left).

turn(A, E, [A,B,C,D,E,F], [E,C,A,D,B,F], right).

turn(A, D, [A,B,C,D,E,F], [D,F,C,B,E,A], top).

turn(A, F, [A,B,C,D,E,F], [F,D,C,A,E,B], bottom).

getColor([[A|_]|_],1/1,A):-!.
getColor([A|_],1/1,A):-!.
getColor([A|_],X/1,C):-getColor(A,1/X,C),!.

getColor([A|C],X/Y,Z):-
       Y1 is Y - 1,
       getColor(C, X/Y1, Z).

color(X/Y,C):-
       A = [[blue,white,yellow,green],[white,green,blue,yellow],[red,white,pink,red],[green,red,white,blue]],
       getColor(A,X/Y,C).

step(X/Y, [X/Y|Path], [X/Y|Path],_).

step(X/Y,[X2/Y2|Path1],Path,Cube):-
   	surround(X2/Y2, X1/Y1, Direction),
        not(member(X1/Y1, Path1)),
        X1<5,
        Y1<5,
	color(X2/Y2, C1),
	color(X1/Y1, C2),
	turn(C1, C2, Cube, Cube1, Direction),
        step(X/Y,[X1/Y1,X2/Y2|Path1],Path,Cube1).



move(X/Y, X1/Y1, Path,Cube):-
	color(X1/Y1,Clr),
        turn(_,Clr,Cube,[A,B,C,D,E,F],_),
	step(X/Y,[X1/Y1],Path,[A,B,C,D,E,F]).

move(X/Y, X1/Y1, Path,Cube):-
	color(X1/Y1,Clr),
        turn(_,Clr,Cube,[A,B,C,D,E,F],_),
	step(X/Y,[X1/Y1],Path,[A,B,D,E,F,C]).

move(X/Y, X1/Y1, Path,Cube):-
	color(X1/Y1,Clr),
        turn(_,Clr,Cube,[A,B,C,D,E,F],_),
	step(X/Y,[X1/Y1],Path,[A,B,E,F,C,D]).

move(X/Y, X1/Y1, Path,Cube):-
	color(X1/Y1,Clr),
        turn(_,Clr,Cube,[A,B,C,D,E,F],_),
	step(X/Y,[X1/Y1],Path,[A,B,F,C,D,E]).

roll(X/Y,X1/Y1,Path):-
        Cube = [green,white,red,pink,blue,yellow],
        move(X/Y,X1/Y1,Path,Cube).
