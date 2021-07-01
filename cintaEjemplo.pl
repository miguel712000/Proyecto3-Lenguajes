:- dynamic init_tape/1.

init_tape([1,0,0,1,1,0,1,1,0]).

inst(q0,0,q0,0,der).
inst(q0,1,q1,1,der).
inst(q1,1,q1,1,der).
inst(q1,0,q2,0,izq).
inst(q2,1,qf,0,detener).
