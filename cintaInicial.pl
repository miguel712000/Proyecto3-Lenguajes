:- dynamic init_tape/1.

init_tape([b,b,b,$]).

inst(q0, b, q1, e, der).
inst(q1, b, q2, e, der). 
inst(q2, b, q3, 0, der). 
inst(q3, b, q4, , der). 
inst(q3, $, qf, 0, detener).
inst(q4, b, q5, 0, izq).
inst(q4, , q5, 0, izq).
inst(q4, e, q5, 0, izq).
inst(q4, 0, q5, 0, izq).
inst(q4, 1, q5, 0, izq).
inst(q5, , q6, , izq).
inst(q5, b, q6, b, izq).
inst(q5, 0, q6, 0, izq).
inst(q5, 1, q6, 1, izq).
inst(q5, e, q6, e, izq).
inst(q6, b, q7, 0, der). 
inst(q6, 0, q6, 0, izq). 
inst(q6, , q10, , der).
inst(q7, , q8, x, der). 
inst(q8, b, q9, b, izq). 
inst(q8, 0, q9, 0, izq). 
inst(q8, 1, q9, 1, izq). 
inst(q8, , q9, , izq). 
inst(q8, x, q9, x, izq). 
inst(q9, b, q6, b, izq). 
inst(q9, 0, q6, 0, izq). 
inst(q9, 1, q6, 1, izq). 
inst(q9, , q6, , izq). 
inst(q9, x, q6, x, izq). 
inst(q10, , q12, 1, izq).
inst(q10, b, q11, b, der). 
inst(q10, 0, q11, 0, der). 
inst(q10, 1, q11, 1, der). 
inst(q10, x, q11, x, der). 
inst(q11, b, q10, b, der). 
inst(q11, , q10, , der). 
inst(q11, 1, q10, 1, der). 
inst(q11, 0, q10, 0, der). 
inst(q11, x, q10, x, der). 
inst(q12, x, q10, , der). 
inst(q12, e, q14, e, der). 
inst(q12, , q13, , izq). 
inst(q13, b, q12, b, izq). 
inst(q13, , q12, , izq). 
inst(q13, 1, q12, 1, izq). 
inst(q13, 0, q12, 0, izq). 
inst(q13, x, q12, x, izq). 
inst(q14, b, q15, 0, izq). 
inst(q14, , q7, , der). 
inst(q14, 1, q7, 1, der). 
inst(q14, 0, q7, 0, der). 
inst(q14, x, q7, x, der). 
inst(q14, $, qf, 0, detener). 
inst(q15, b, q6, b, izq). 
inst(q15, , q6, , izq). 
inst(q15, 1, q6, 1, izq). 
inst(q15, 0, q6, 0, izq). 
inst(q15, x, q6, x, izq). 
inst(q16, b, q14, b, der). 
inst(q16, , q14, _, der). 
inst(q16, 1, q14, 1, der). 
inst(q16, 0, q14, 0, der). 
inst(q16, x, q14, x, der).
