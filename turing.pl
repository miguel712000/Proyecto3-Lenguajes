%! Programa de la máquina de Turing
%inst(q0, 1, q0, 0, der).
%inst(q0, v, qf, 1, detener).

:- ensure_loaded('cintaInicial.pl').
:- init_tape/1.

% Simulador

turing(CintaFinal) :-
	
	init_tape(CintaActual),
    ejecute(q0, [], CintaActual, Ls, Rs),
    reverse(Ls, Ls1),
    append(Ls1, Rs, CintaFinal).
 
ejecute(qf, Ls, Rs, Ls, Rs) :- !.
ejecute(Q0, Ls0, Rs0, Ls, Rs) :-
    simbolo(Rs0, SimboloLeido, RsRest),
    once(inst(Q0, SimboloLeido, Q1, NuevoSimb, Action)),
    accion(Action, Ls0, [NuevoSimb|RsRest], Ls1, Rs1),
    ejecute(Q1, Ls1, Rs1, Ls, Rs).
 
simbolo([], v, []).
simbolo([Simb|Rs], Simb, Rs).
 
accion(izq, Ls0, Rs0, Ls, Rs) :- izq(Ls0, Rs0, Ls, Rs).
accion(detener, Ls, Rs, Ls, Rs).
accion(der, Ls0, [Sym|Rs], [Sym|Ls0], Rs).
 
izq([], Rs0, [], [v|Rs0]).
izq([L|Ls], Rs, Ls, [L|Rs]).
