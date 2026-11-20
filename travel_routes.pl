edge('Makkah',  'Madinah').
edge('Makkah',  'Riyadh').

edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Taif',    'Dammam').
edge('Taif',    'Tabuk').

edge('Tabuk',   'Taif').

edge('Qatif',   'Madinah').
edge('Qatif',   'Dammam').

edge('Dammam',  'Qatif').
edge('Dammam',  'Riyadh').

edge('Riyadh',  'Dammam').

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

% path(Start, Finish, Visited, Path_List)
path(X, X, P, P).


path(X, Y, Visited, P) :-
    edge(X, Z),
    not(member(Z, Visited)),
    path(Z, Y, [Z|Visited], P).