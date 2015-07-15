#!/usr/bin/swipl -s

surround(X/Y, X1/Y1):-
                Y1 is Y - 1,
                X1 is X,
                Y1>0;
                Y1 is Y + 1,
                X1 is X;
                X1 is X - 1,
                Y1 is Y,
                X1>0;
                X1 is X + 1,
                Y1 is Y.
                %XX is X-X1,
                %YY is Y-Y1,
                %YY2 is Y1-Y,
                %XX =\= YY,
                %XX =\= YY2,

getColor([[A|_]|_],1/1,A):-!.
getColor([A|_],1/1,A):-!.
getColor([A|_],X/1,C):-getColor(A,1/X,C),!.

getColor([A|C],X/Y,Z):-
        Y1 is Y - 1,
        getColor(C, X/Y1, Z).

color(X/Y,C):-
        A = [[red,green,blue],[black,pink,yellow],[grey,blow,purple]],
        getColor(A,X/Y,C).

step(X/Y, [X/Y|Path], Path).

step(X/Y,[X2/Y2|Path1],Path):-
        % not(member(X1/Y1, Path1)),
        surround(X2/Y2, X1/Y1),
         step(X/Y,[X1/Y1,X2/Y2|Path1],Path),!.
