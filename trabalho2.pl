:- dynamic language/7.

language(c, '.c', 1, 4, 3, [application, sys, general_purpose, low_level_operations], [multiple]).
language(c_plus_plus, '.cpp', 1.5, 5, 3, [application, sys], [multiple]).
language(c_sharp, '.cs', 3, 4, 4, [application, rad, business, client_side, general, server_side, web], [multiple]).
language(matlab, '.mat', 4, 4, 5, [highly_domain_specific, numerical_computing], [multiple]).
language(scala, '.scala', 1, 5, 6, [application, distributed, web], [multiple]).
language(php, '.php', 23, 7, 7, [server_side, web_application, web], [multiple]).
language(cobol, '.cbl', 0.25, 2, 3, [application, business], [multiple]).
language(fortran, '.f', 6, 4, 4, [application, numerical_computing], [multiple]).
language(kotlin, '.kt', 2.5, 5, 5, [application, mobile_development, server_side, client_side, web], [multiple]).
language(python, '.py', 16, 8, 5, [application, general, web, scripting, artificial_intelligence, scientific_computing], [aspect_oriented]).
language(ruby, '.rb', 57, 8, 5, [application, scripting, web], [aspect_oriented]).
language(java, '.java', 3, 4, 4, [application, business, client_side, general, mobile_development, server_side, web], [concurrent]).
language(go, '.go', 4, 7, 5, [application, web, server_side], [concurrent]).
language(swift, '.swift', 1, 2, 3, [application, general], [concurrent, multi_paradigm]).
language(prolog, '.pl', 3, 7, 5, [application, artificial_intelligence], [logic, declarative]).
language(dart, '.dart', 6, 5, 5, [application, web, server_side, mobile, iot], [structured]).
language(objective_c, '.h', 6, 5, 5, [application, general], [concurrent]).
language(wolfram, '.nb', 3, 2, 6, [symbolic_language], [logic, distributed]).
language(perl, '.pl', 25, 7, 3, [application, scripting, text_processing, web], [aspect_oriented, array, lazy_evaluation, multiple_dispatch, metaprogramming]).
language(elixir, '.ex', 6, 5, 5, [application, distributed], [concurrent, distributed]).
language(javascript, '.js', 2, 6, 6, [client_side, server_side, web], [prototype_based]).
language(assembly, '.asm', 0.5, 1, 1, [general], [any]).
language(haskell, '.hs', 1.5, 6, 3, [application], [lazy_evaluation]).
language(lua, '.lua', 2, 2, 5, [application, scripting, embedded_scripting], [aspect_oriented]).
language(birl, '.birl', 0.1, 10, 10, [general, scripting, muscle_creation, body_building, cage_exiting, brute_force], [zueira, aspect_oriented]).

bestPerformance([H|T], Ling):-
    compareBestPerformance(H, T, Ling).

compareBestPerformance(Ling, [], Ling).

compareBestPerformance(L, [H|T], Ling):-
    language(L,_,P1,_,_,_,_),language(H,_,P2,_,_,_,_), P1<P2, compareBestPerformance(L, T, Ling).
compareBestPerformance(L, [H|T], Ling):-
    language(L,_,P1,_,_,_,_),language(H,_,P2,_,_,_,_), P2=<P1, compareBestPerformance(H, T, Ling).

worstperformance([H|T], Ling):-
  compareWorstPerformance(H, T, Ling).

  compareWorstPerformance(Ling, [], Ling).

  compareWorstPerformance(L, [H|T], Ling):-
      language(L,_,P1,_,_,_,_),language(H,_,P2,_,_,_,_), P1>P2, compareWorstPerformance(L, T, Ling).
  compareWorstPerformance(L, [H|T], Ling):-
      language(L,_,P1,_,_,_,_),language(H,_,P2,_,_,_,_), P2>=P1, compareWorstPerformance(H, T, Ling).


goodfor(Ling, Use):-
	language(Ling, _, _, _, _, X, _),	find_type(X, Use).

find_type([H|_], Type):-
  H = Type, !.

find_type([H|T], Type):-
  H \= Type, find_type(T, Type).


goodsfor(Lings, Use, L):-
	bagof(Lings, goodfor(Lings, Use), L).

menu :-
  nl,nl,
  write('Please choose one of the following functions to be executed...'), nl,nl,
  write('Press \'1\' to run bestPerformance comparisson.'), nl,
  write('Press \'2\' to run worst performance comparisson between languages.'), nl,
  write('Press \'3\' to see what languages are good for a project scope.'), nl,
  write('Press \'4\' to add a new language to database.'), nl,
  write('Press \'5\' to quit.'), nl, nl,
  write('Enter your choice:'), nl,
  read(Choice), Choice>0, Choice=<5,
  doit(Choice), menu.

end :- break.

doit(1):-
  write('You chose #1.'), nl,
  write('Enter a list of languages to retrive those with the best performance of them:'), nl,
  read(List), bestPerformance(List, Lang),
  write('The one with the best performance is: '), write(Lang), nl, nl.

doit(2):-
  write('You chose #2.'), nl,
  write('Enter a list of languages to retrive those with the worst performance of them:'), nl,
  read(List), worstperformance(List, Lang),
  write('The one with the worst performance is: '), write(Lang), nl, nl.

doit(3):-
  write('You chose #3.'), nl,
  write('Enter the scope of your project (Ex.: web_application, web, etc):'), nl,
  read(Scope), goodsfor(_, Scope, Lang),
  write('Languages that might be good for you: '), write(Lang), nl, nl.

doit(4):-
  write('Please insert the name of the language: '), nl,
  read(Name), nl,
  write('Please insert the file extension of the language: '), nl,
  read(Ext), nl,
  write('Please insert the performance factor of the language: '), nl,
  read(P), nl,
  write('Please insert the sintax easiness factor of the language: '), nl,
  read(S), nl,
  write('Please insert the learning curve factor of the language: '), nl,
  read(L), nl,
  write('Please insert a list of things that the lang is good for: '), nl,
  read(T), nl,
  write('Please insert a list of paradigms of the language: '), nl,
  read(Pa), nl,
  assert(language(Name, Ext, P,S,L,T,Pa)), nl,
  write('Language successfully saved!'), nl.

doit(5):- end.
