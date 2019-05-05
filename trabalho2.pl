:-op(50, fx, '.').

language(c, '.c', 1, 4, 3, [application, sys, general_purpose, low_level_operations], [multiple]).
language(c_plus_plus, '.cpp', 0, 5, 3, [application, sys], [multiple]).
language(c_sharp, '.cs', 3, 4, 4, [application, rad, business, client_side, general, server_side, web], [multiple]).
language(matlab, '.mat', 0.5, 4, 5, [highly_domain_specific, numerical_computing], [multiple]).
language(scala, '.scala', 0, 5, 6, [application, distributed, web], [multiple]).
language(php, '.php', 0, 7, 7, [server_side, web_application, web], [multiple]).
language(cobol, '.cbl', 0, 2, 3, [application, business], [multiple]).
language(fortran, '.f', 0, 4, 4, [application, numerical_computing], [multiple]).
language(kotlin, '.kt', 0, 5, 5, [application, mobile_development, server_side, client_side, web], [multiple]).
language(python, '.py', 2, 8, 5, [application, general, web, scripting, artificial_intelligence, scientific_computing], [aspect_oriented]).
language(ruby, '.rb', 3, 8, 5, [application, scripting, web], [aspect_oriented]).
language(java, '.java', 3, 4, 4, [application, business, client_side, general, mobile_development, server_side, web], [concurrent]).
language(go, '.go', 0, 7, 5, [application, web, server_side], [concurrent]).
language(swift, '.swift', 1, 2, 3, [application, general], [concurrent, multi_paradigm]).
language(prolog, '.pl', 0, 7, 5, [application, artificial_intelligence], [logic, declarative]).
language(dart, '.dart', 0, 5, 5, [application, web, server_side, mobile, iot], [structured]).
language(objective_c, '.h', 0, 5, 5, [application, general], [concurrent]).
language(wolfram, '.nb', 0, 2, 6, [symbolic_language], [logic, distributed]).
language(perl, '.pl', 0, 7, 3, [application, scripting, text_processing, web], [aspect_oriented, array, lazy_evaluation, multiple_dispatch, metaprogramming]).
language(elixir, '.ex', 0, 5, 5, [application, distributed], [concurrent, distributed]).
language(javascript, '.js', 0, 6, 6, [client_side, server_side, web], [prototype_based]).
language(assembly, '.asm', 0, 1, 1, [general], [any]).
language(haskell, '.hs', 1.5, 6, 3, [application], [lazy_evaluation]).
language(lua, '.lua', 0, 2, 5, [application, scripting, embedded_scripting], [aspect_oriented]).
language(birl, '.birl', 1, 10, 10, [general, scripting, muscle_creation, body_building, cage_exiting, brute_force], [zueira, aspect_oriented]).


bestperformance().

worstperformance().

goodforwebdevelopment().

multipleparadigms(language(Name, Extension, Performance, SyntaxEase, LearningCurve, GoodFor, [multiple])).
