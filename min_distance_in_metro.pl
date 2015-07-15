DOMAINS 
    ������ = symbol*
    ���_���=symbol
    ���_���=symbol
    ������_����� = integer*
     
PREDICATES
    nondeterm ������(���_���,integer,���_���)
    
    nondeterm �������1(������)
    nondeterm �������2(������)
    nondeterm ����1(������,������,������)
    nondeterm ����(������)

    


    nondeterm ����_����(symbol,symbol,������,������,integer) 

    nondeterm ����(symbol,������,������,������,integer)
        nondeterm ����_�����(symbol,������,������,������,integer)
   
    nondeterm ����_����(symbol,������,������,������)
    nondeterm �������(symbol,symbol,������)
    nondeterm �����������(symbol,symbol,������)
	nondeterm ����������(������,integer)
    
    nondeterm ����������_����(symbol,symbol,������,������,integer)    
    nondeterm �������(���_���,���_���,integer,������)      
    nondeterm �����_�����(symbol,symbol,symbol,symbol)
    nondeterm ��������(symbol, symbol,������)     
	nondeterm �����1(������)                             
	nondeterm �����2(������)
	nondeterm �����3(������)
	nondeterm �����4(������)
	nondeterm �����5(������)
	nondeterm �����6(������)
	nondeterm �����7(������)
	nondeterm �����8(������)	
	
	

 nondeterm ���_�����1(������, ������)
 nondeterm ���_�����(������, ������,������)
 nondeterm ����_�������(symbol,������,symbol)
 nondeterm ���������_�������(������,symbol)
 
 nondeterm ��(symbol, integer, symbol)

CLAUSES
  
%  ________���� ������: ������� � ���������� ����� ����________________________
%�����1				%�����2				%�����3
������(a1,42,a2).	������(b1,45,b2).	������(c1,28,c2).
������(a2,25,a3).	������(b2,30,b3).	������(c2,30,c3).
������(a3,60,a4).	������(b3,60,b4).	������(c3,43,c4).
������(a4,37,a5).	������(b4,43,a5).	������(c4,43,c5).
������(a5,20,a6).	������(a5,56,b5).	������(c5,30,a6).
������(a6,40,a7).	������(b5,43,b6).	������(a6,40,c6).
������(a7,40,a8).	������(b6,30,b7).	������(c6,60,c7).
������(a8,40,a9).	������(b7,30,b8).	������(c7,31,c8).
������(a9,30,a10).	������(b8,28,b9).	������(c8,28,c9).
										������(c9,28,c10).

%�����4				%�����5				%�����6
������(d1,28,d2).	������(e1,40,e2).	������(f1,28,f2).
������(d2,34,d3).	������(e2,20,e3).	������(f2,42,f3).
������(d3,49,c4).	������(e3,30,e4).	������(f3,31,a7).
������(c4,20,b4).	������(e4,31,c5).	������(a7,40,f4).
������(b4,31,a4).	������(c5,20,a5).	������(f4,31,b6).
������(a4,31,d4).	������(a5,45,e5).	������(b6,31,f5).	
������(d4,51,d5).	������(e5,40,e6).	������(f5,31,f6).
������(d5,20,d6).	������(e6,16,e7).	������(f6,28,c9).
������(d6,40,d7).	������(e7,24,e8).	������(c9,28,f7).
					������(e8,40,e9).

%�����8				%�����7
������(a3,40,b3).	������(g1,28,g2).
������(b3,54,c3).	������(g2,19,g3).
������(c3,47,d3).	������(g3,28,a7).
������(d3,52,e2).	������(a7,57,c6).
������(e2,59,f2).	������(c6,40,e5).
������(f2,30,g2).	������(e5,63,g4).
������(g2,34,a8).	������(g4,15,g5).
������(a8,80,b6).	
������(b6,62,c7).	
������(c7,41,e7).
������(e7,41,d5).
������(d5,29,g4).
������(g4,65,a3).
    
    �����1([a1,a2,a3,a4,a5,a6,a7,a8,a9,a10]).
    �����2([b1,b2,b3,b4,a5,b5,b6,b7,b8,b9]).
    �����3([c1,c2,c3,c4,c5,a6,c6,c7,c8,c9,c10]).
    �����4([d1,d2,d3,c4,b4,a4,d4,d5,d6,d7]).
    �����5([e1,e2,e3,e4,c5,a5,e5,e6,e7,e8,e9]).
    �����6([f1,f2,f3,a7,f4,b6,f5,f6,c9,f7]).
    �����7([g1,g2,g3,a7,c6,e5,g4,g5]).
    �����8([a3,b3,c3,d3,e2,f2,g2,a8,b6,c7,e7,d5,g4,a3]).
    
    ��(X, L, Y):-
    	������(X, L, Y),!;
    	������(Y, L, X).
    
    ���_�����1(����, ���������):-
    	���_�����(����,���������,����).
    
    ���_�����([],[],_).
    ���_�����([Y,X|����1], [Y,X,�����|����],��������):-
    	 ����_�������(X,��������,�����),
    	���_�����(����1, ����,��������),!.
    
    ���_�����([Y,X|����1], [Y,X|����],��������):-
       	���_�����(����1, ����,��������).

    ����_�������(Y, [X,Y,Y,Z|_], ��_�����):-
	�����_�����(X,Y,Z,��_�����).
	
    ����_�������(Y, [_,_|����], ��_�����):-
	����_�������(Y, ����, ��_�����).
	
    �����_�����(X,Y,Z,�����):-
    	�����1(�����1),not(��������(X,Y,�����1)),��������(Y,Z,�����1),�����=���������_��_�����1;
    	�����2(�����2),not(��������(X,Y,�����2)),��������(Y,Z,�����2),�����=���������_��_�����2;
    	�����3(�����3),not(��������(X,Y,�����3)),��������(Y,Z,�����3),�����=���������_��_�����3;
    	�����4(�����4),not(��������(X,Y,�����4)),��������(Y,Z,�����4),�����=���������_��_�����4;
    	�����5(�����5),not(��������(X,Y,�����5)),��������(Y,Z,�����5),�����=���������_��_�����5;
    	�����6(�����6),not(��������(X,Y,�����6)),��������(Y,Z,�����6),�����=���������_��_�����6;
    	�����7(�����7),not(��������(X,Y,�����7)),��������(Y,Z,�����7),�����=���������_��_�����7;
    	�����8(�����8),not(��������(X,Y,�����8)),��������(Y,Z,�����8),�����=���������_��_�����8.
    	
    ��������(X,Y,[X,Y|_]).
    ��������(X,Y,[Y,X|_]).	
    ��������(X,Y,[_|����]):-
    	��������(X,Y,����).
		
	�������(Y,Z,����):-
		�����������(Y,Z,����);
        �����������(Z,Y,����).                                     
                       
    �����������(Y,Z,[_,_|�����]):-�����������(Y,Z,�����).                       
    �����������(Y,Z,[Y,Z|_]). 
    
    ���������_�������([Z],Z).
    ���������_�������([_|����],Z):-
    	���������_�������(����, Z).
		
	
 %   _______����������� �� ������ � ������; _____________________________________   
    �������1(����1):-findall(����,������(����,_,_),����1).
    �������2(����2):-findall(����,������(_,_,����),����2).
 
 %  _______��������� ���� �� �������� "��������" _____________________________ 
    ����1([X,Y],[X],[Y]).    
    ����1([X,Y|�����],[X|����1],[Y|����2]):-����1(�����,����1,����2).

    ����(����):-�������1(����1),
                �������2(����2),
                ����1(����,����1,����2).  
   


%   _______���������� ����� ���� ________________________________________                

   ����������([],0).
    ����������([X,Y|�����],N):-����������(�����,N1),
    			��(X, L, Y),
    			N = L + N1.
   
%   ______��� ��������� ���� ________________________________________________       
    ����_����(A,Z,����,����,�����):-
    						
    						����_����(A,[Z],����,����1),
    						����������(����1,�����1),
    						����(A,[Z],����,����,�����1),
    				        ����������(����,�����).         
            
    ����_����(A,[A|����1],_,����1).                                                 
    ����_����(A,[Z|����1],����,����):-
         �������(Y,Z,����),
         not(�����������(Z,Y,����1)), 
         not(�����������(_,Z,����1)), 
         ����_����(A,[Y,Y,Z|����1],����,����),!. 
         
 
	����_�����(A,[A|����1],_,����1,��������):-
		����������(����1,����������),
		����������<��������.
 	                                                 
    ����_�����(A,[Z|����1],����,����,��������):-
         ����������(����1, ����������),
    	 ����������<��������,
         �������(Y,Z,����),
         not(�����������(Z,Y,����1)), 
         not(�����������(_,Z,����1)), 
         ����_�����(A,[Y,Y,Z|����1],����,����,��������). 

 
    ����(A,[A|����1],����,����,��������):-
    	����������(����1, ����������),
    	����������<��������,
    	���������_�������(����1, Z),
    	����(A,[Z],����, ����,����������).     
    	 

    ����(A,[A|����1],����,����1,��������):-
       	���������_�������(����1, Z),
       	����������(����1, ����������),
       	����������=��������,
       	not(����_�����(A,[Z],����,_,����������)).
       	
    ����(A,[Z|����1],����,����,��������):-
         ����������(����1, ����������),
         ����������<��������,
         �������(Y,Z,����),
         not(�����������(Z,Y,����1)), 
         not(�����������(_,Z,����1)), 
         ����(A,[Y,Y,Z|����1],����,����,��������),!. 

% ________���������� ����������� ���� ______________________________________                      
    ����������_����(A,Z,����,����������_����,�����):-
         ����_����(A,Z,����,����,�����),
         ���_�����1(����,����������_����).
                
	�������(���������_�����,��������_�����,�����,����):-
		����(����),
		����������_����(���������_�����,��������_�����,����,����,�����).                                          
GOAL
  write("������� �������:"),nl,readln(��_�������),
  write("������� ����������:"),nl,readln(��_�������),nl,
  write("����������� ����:"),nl, 
  �������(��_�������,��_�������,����������_����������,����).
 
 